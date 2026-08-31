class Dcl < Formula
  desc "Create ready-to-use local clones of dev projects by symlinking shared dependencies"
  homepage "https://github.com/EArnold1/dcl"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EArnold1/dcl/releases/download/v0.2.0/dcl-aarch64-apple-darwin.tar.gz"
      sha256 "43280531dd5e3be1bd9b2f2f53a6e3fec5e40d077a24c8ea8b0202ec6d5bdc15"
    end
    on_intel do
      url "https://github.com/EArnold1/dcl/releases/download/v0.2.0/dcl-x86_64-apple-darwin.tar.gz"
      sha256 "d6681cfbc85e9455f6c2fed28a5e1f955b94b54beb1d5af348cfd247fbcae610"
    end
  end

  def install
    dcl_path = Dir["**/dcl"].grep(/dcl-.*-apple-darwin\/dcl/).first
    raise "dcl binary not found in archive" unless dcl_path
    bin.install dcl_path => "dcl"
  end

  test do
    assert_match "dcl", shell_output("#{bin}/dcl --help")
  end
end
