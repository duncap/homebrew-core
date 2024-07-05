class U12js < Formula
  desc "u12.js is the official u12.org CLI, designed to facilitate various network-related tasks."
  homepage "https://github.com/duncap/u12js"
  url "https://github.com/duncap/u12js/archive/refs/heads/main.zip"
  version "1.0.0"
  sha256 "d94ddf240cfec660c6432fa6b05bf181154d3a58e31ec76706dfceef3e94fe34"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"u12.js" => "u12.js"
  end

  def post_install
    chmod "+x", "#{libexec}/u12.js"
  end

  test do
    system "#{bin}/u12.js", "--help"
  end
end
