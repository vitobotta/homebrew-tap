class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.4.3'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.3/hetzner-k3s-macos-arm64', using: :curl
      sha256 '7e789bbc37c6e63bc950da10462ba8e29cfb1a630b117f43843d2960a6c73058'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.3/hetzner-k3s-macos-amd64', using: :curl
      sha256 '2c96161e975bd1154ab35b72e3704206669906568d76c3dfe9387969b579bc7c'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.3/hetzner-k3s-linux-arm64', using: :curl
      sha256 'd4465b1ee9df0ed48b98b4cbae2a1f346cf764d4376ef542877677be6ff06954'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.3/hetzner-k3s-linux-amd64', using: :curl
      sha256 '58ad7ffc6e7c620b94e125a3466cd336e618e184d2d2474e683dcb29bbb6b7f9'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
