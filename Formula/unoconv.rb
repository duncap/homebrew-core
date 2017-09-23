class Unoconv < Formula
  desc "Convert between any document format supported by OpenOffice"
  homepage "http://dag.wiee.rs/home-made/unoconv/"
  url "http://dag.wieers.com/home-made/unoconv/unoconv-0.7.tar.gz"
  sha256 "56abbec55632b19dcaff7d506ad6e2fd86f53afff412e622cc1e162afb1263fa"
  head "https://github.com/dagwieers/unoconv.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "cead2876612e72e232f8abdb037329dc5f2f98b3665f723ff556369a6e3888c1" => :high_sierra
    sha256 "67de3e479604cf777e763c116a47793fda5791feaa322af1f2226dc7f0491ddf" => :sierra
    sha256 "432c15c1bab856edb94784c5849a120f6397d0198ec7e3acedff679f65f6841c" => :el_capitan
    sha256 "82e4120b114a941e5a099ca5ca3df12270f66795d8292a95d4164bcd3199edac" => :yosemite
    sha256 "db9fc7afd8681160e90f2e3de016e92bffe9d4d541cd70b50abe85b3c987f7d1" => :mavericks
    sha256 "ae47973f02b31408afac680814bfb26002714faded753a9c753c3ab28977572b" => :mountain_lion
  end

  depends_on :python if MacOS.version <= :snow_leopard

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  def caveats; <<-EOS.undent
    In order to use unoconv, a copy of LibreOffice between versions 3.6.0.1 - 4.3.x must be installed.
    EOS
  end
end
