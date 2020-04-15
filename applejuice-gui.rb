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

class ApplejuiceGui < Formula
  desc "appleJuice GUI"
  homepage "https://applejuicenet.de"
  url "https://download.applejuicenet.org/snapshot/gui/AJCoreGUI_v0_71_2_Fassade_1_23a.zip"
  sha256 "7b5932d2c470b5457a08d88c227f405273bd4076657b5fc485d35ed46dfc1afa"
  version "v0_71_2_Fassade_1_23a"
  depends_on Java8Requirement

  def install
    libexec.install Dir["*"]
    (bin/"ajgui").write <<~EOS
      #!/bin/sh
      export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
      cd #{libexec}
      java -jar AJCoreGUI.jar "$@"
    EOS

  end

end