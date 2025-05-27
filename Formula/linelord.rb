class Linelord < Formula
  desc "Analyze git blame data with developer contribution statistics"
  homepage "https://github.com/MarkusAugust/linelord"
  version "0.1.7"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-macos-arm64.tar.gz"
    sha256 "1caa311e66d5aa39321054f79155abbd439b13bfaaee532b88f6a0078ee8d2b2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-macos-intel.tar.gz"
    sha256 "2aa1d758611ca8b325ce4d503b2e602880ace45ee624a71d8a5c4c4f24929e50"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-linux-x64.tar.gz"
    sha256 "7913aa36d0ca18bfc49308b81012a724b491948bb1e38ba6e150810838b7e2f1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-linux-arm64.tar.gz"
    sha256 "ac20cde4969ed350a8816f2084e55ae47c937e6e0b2efb91cd421d0ac689bd88"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "linelord-macos-arm64" => "linelord"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "linelord-macos-intel" => "linelord"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "linelord-linux-x64" => "linelord"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "linelord-linux-arm64" => "linelord"
    end
  end

  test do
    system "#{bin}/linelord", "--version"
  end
end