class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.9.0'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.9.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 '00837e4009fcdb6e9565d8a1643d59486761179b49afd3966e2d0488465ceb51'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.9.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 '9ca3007f9d204712bfff1962d753680f5d0c2d5de00da8e99c3eb0fdd5a73d15'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.9.0/hetzner-k3s-linux-arm64', using: :curl
      sha256 'b5ddea4018497b422da355f84ef82628a21527fc64746ae0196d4e8bae91a657'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.9.0/hetzner-k3s-linux-amd64', using: :curl
      sha256 '1506dd3deed4d71309b4a6eaf8a7cbf96a1e587b780b203f406b865ae9e1f3ba'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
