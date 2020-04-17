class Java8Requirement < Requirement
  fatal true

  satisfy do
    system "/usr/libexec/java_home -v 1.8"
  end

  def message; <<~EOS
    Java 8 Runtime Environment is required; install it via:
      brew tap AdoptOpenJDK/openjdk
      brew cask install adoptopenjdk8-jre
  EOS
  end
end

class ApplejuiceCore < Formula
  desc "appleJuice Core"
  homepage "https://applejuicenet.de"
  url "https://download.applejuicenet.org/snapshot/0.31/ajcore-149.jar"
  sha256 "089800059f9645423da3a4e5c3f986c620cb78e80893b8b34dfa2ba64a79d7f6"
  version "0.31.149.110"
  depends_on Java8Requirement

  resource "ajnetmask" do
    url "https://github.com/applejuicenet/ajnetmask/releases/download/1.0.0/libajnetmask.jnilib"
    sha256 "0371f17d01ff8f2d6ca69fb61e5d77157dedb788aecd3a0aa22525696b78538f"
  end

  def install
    libexec.install Dir["*"]
    (bin/"ajcore").write <<~EOS
      #!/bin/sh
      export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
      cd #{libexec} 
      read -p "Enter Memory in MB [1024]: " RamInput
      RAM=${RamInput:-1024}
      set -x
      java -jar -Xmx${RAM}m ajcore-149.jar "$@"
    EOS

    resource("ajnetmask").stage do
      (libexec).install Dir["libajnetmask.jnilib"]
    end
  end

end