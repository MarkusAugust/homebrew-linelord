class Linelord < Formula
  desc "Analyze git blame data with developer contribution statistics"
  homepage "https://github.com/MarkusAugust/linelord"
  version "0.1.7"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-macos-arm64.tar.gz"
    sha256 "40043f57c33a116de7cae864268d9c4e542f3dcbc06514d78de0f16784c54a5b"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-macos-intel.tar.gz"
    sha256 "66e663012c9141a2916c7c104b78019c3fbc38d419d73d019507f88789175393"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-linux-x64.tar.gz"
    sha256 "6b4c3a847e9a9f0ad1c989287ff263a1660f7cb0c08785aeb7a5200a3e7f9a19"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/MarkusAugust/linelord/releases/download/v#{version}/linelord-linux-arm64.tar.gz"
    sha256 "cb2568af66a1dd37007a027a60d4bd17558177d1b6341902548e9d136857f8f3"
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