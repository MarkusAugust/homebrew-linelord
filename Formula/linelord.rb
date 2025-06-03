class Linelord < Formula
  desc "Analyze git blame data with developer contribution statistics"
  homepage "https://github.com/MarkusAugust/linelord"
  version "0.6.3"
  
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-linux-arm64.tar.gz"
    sha256 "a7d84828453d20710f1588189b8e115738865782298d414b6e71d738ebb7f9d1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-linux-x64.tar.gz"
    sha256 "825f758b9a47b7965c28b2f8030a2b3a1299f449df94d2832e804b321432c76b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-macos-arm64.tar.gz"
    sha256 "1c7d7b6c58575a44bd46eb47b3e842da0bcd81a20928fef9d09f800bfc0aff6e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-macos-intel.tar.gz"
    sha256 "3e80fe1040c55592a504327feb5405fe57b87584136b4af20f51e1330357158f"
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