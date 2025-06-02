class Linelord < Formula
  desc "Analyze git blame data with developer contribution statistics"
  homepage "https://github.com/MarkusAugust/linelord"
  version "0.6.0"
  
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-linux-arm64.tar.gz"
    sha256 "c4f6b63c1f19a37b7133881de087d8bcf42066c30f28b1fd28480ac4e99ae925"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-linux-x64.tar.gz"
    sha256 "8eebb7dadc0e230fde213fe8cc41ec34277f6409096d83c212380e4886bdfd2e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-macos-arm64.tar.gz"
    sha256 "b09bc6718a973a363b8e201392fa5a8b869981d84fbf146c218461ced7af72fc"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-macos-intel.tar.gz"
    sha256 "e3f32cbead316465a0220be2292154e875c95c8f18ecb39d10220a2481f71062"
  end

  def install
    if OS.linux? && Hardware::CPU.arm?
      bin.install "linelord-linux-arm64" => "linelord"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "linelord-linux-x64" => "linelord"
    elsif OS.mac? && Hardware::CPU.arm?
      bin.install "linelord-macos-arm64" => "linelord"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "linelord-macos-intel" => "linelord"
    end
  end

  test do
    system "#{bin}/linelord", "--version"
  end
end