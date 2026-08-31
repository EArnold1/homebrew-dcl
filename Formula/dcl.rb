class Dcl < Formula
  desc "Create ready-to-use local clones of dev projects by symlinking shared dependencies"
  homepage "https://github.com/EArnold1/dcl"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EArnold1/dcl/releases/download/v0.1.0/dcl-aarch64-apple-darwin.tar.gz"
      sha256 "93a842f80f7ccd307e51e98df233cb3665dd9fce567e1398b7085836cb231cbc"
    end
    on_intel do
      url "https://github.com/EArnold1/dcl/releases/download/v0.1.0/dcl-x86_64-apple-darwin.tar.gz"
      sha256 "71e45ef6e4c86090354c40d4e8efbbecc5986e7a8f899005f72c5422e7983c08"
    end
  end

  def install
    bin.install Dir["dcl-*-apple-darwin/dcl"].first => "dcl"
  end

  test do
    assert_match "dcl", shell_output("#{bin}/dcl --help")
  end
end
