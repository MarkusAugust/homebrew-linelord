class Linelord < Formula
  desc "Analyze git blame data with developer contribution statistics"
  homepage "https://github.com/MarkusAugust/linelord"
  version "1.0.0-rc.1"
  
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-linux-arm64.tar.gz"
    sha256 "b4afa49e384865b164e4255c26b0d4272b23de3e4c56124bae91408cc8ea675d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-linux-x64.tar.gz"
    sha256 "6aae6f9cf62664d31f2ebeb73c6d66553bcb970ca6b5eac4d0a09bda9e44fda9"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-macos-arm64.tar.gz"
    sha256 "030bd5f3b739f1b697c2ab12453f96443422bc952ba5463e17c854cda984935f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-macos-intel.tar.gz"
    sha256 "4caba26ca14aece4a0144a4a56ca4321babcd3f74672b5f7fdebd4c9abd760a2"
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