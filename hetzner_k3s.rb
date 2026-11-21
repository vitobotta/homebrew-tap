class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.17.0'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.17.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 'ba856a0fbcf59a94d78056075e382080e6e13b64126a44f328f8ac5621427e77'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.17.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 '2d3e1c4e92ef64725ad3ce34f90972ad9048cf7d69e326fb9966980f21b8ec9a'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.17.0/hetzner-k3s-linux-arm64', using: :curl
      sha256 '5800165ed00047cd90cccfc95a02ce8a42a8d48fb18ad04fafa925aaa0ff46a8'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.17.0/hetzner-k3s-linux-amd64', using: :curl
      sha256 '3d1e986979a1ed7faca55f70faf3eca5c97e804c5c565b462513417eef8b16e2'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
