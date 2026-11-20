class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.15.0'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.15.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 '6ff72f7c38d4f3c35d4c4cf350f68db914b16471bd60cb681d9f0908ae7127ce'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.15.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 'b6b67c12173193546b6ddc8fcd134a048c4e58659ac9328d7b0a593a0b46831d'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.15.0/hetzner-k3s-linux-arm64', using: :curl
      sha256 '3cb2ff979766596a1083bac36b75d7085eb87e3b4090ac4a62ff6b6f24a0164c'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.15.0/hetzner-k3s-linux-amd64', using: :curl
      sha256 '17de55795a770f1f9ac83a5d12e12823341bd00510a9ee2bf61a4fc36ec2a4c1'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
