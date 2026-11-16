class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.13.0'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.13.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 'd475cbe26a907e09da2bf3c1073dbd4865d9cc20ebc7ec5c6fee1b0f62470e98'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.13.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 'a15ce807d5366242740c6fc258961d8564d75dab4ab208dc0c6749906377ca23'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.13.0/hetzner-k3s-linux-arm64', using: :curl
      sha256 '81633ac6569cfe8e28b96739d536a2d96a9eed62238d596978508b6726b2a650'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.13.0/hetzner-k3s-linux-amd64', using: :curl
      sha256 'bd1b96ea8634ad24bad3eec0aa37da3a91fd4889be9cd35140cbcb9965b6623d'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
