class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.13.1'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.13.1/hetzner-k3s-macos-arm64', using: :curl
      sha256 '2329173744f09cc164e66a685cb00c5b702c5fdf13b6d459ad0dda27415e9e0a'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.13.1/hetzner-k3s-macos-amd64', using: :curl
      sha256 'dc9c0afe59902c6c9af294a629e76213f067fc6bfe140bd99bbf2fc00fa2885f'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.13.1/hetzner-k3s-linux-arm64', using: :curl
      sha256 '1f74a41b5aaedca926001d5cbbc4d6e29bc21f60a63c47b4c394f757fddd1dca'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.13.1/hetzner-k3s-linux-amd64', using: :curl
      sha256 '2f8242373889b51752feee3dd21876bdcdbb35392c730e25fdf788a08f936f02'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
