class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.11.0'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.11.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 '8a32b5f205ba18ad77e238a51fccccbb5225f9e06d216f06b2466789e4c2bb64'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.11.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 '675c5b104a59df0795cdb78b5220fbd636363c89eb5a70902eab5570d4a9f0ad'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.11.0/hetzner-k3s-linux-arm64', using: :curl
      sha256 '61e50f520fb8fd50539a29de174ed96aac7395593b07c87b27534998fd594b11'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.11.0/hetzner-k3s-linux-amd64', using: :curl
      sha256 '88582bbc37b52ebf1636b00fbd20ae392024b4c74fb09f702a020aedc3115279'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
