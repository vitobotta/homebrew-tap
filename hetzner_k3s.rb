class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.4.2'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.2/hetzner-k3s-macos-arm64', using: :curl
      sha256 '4e3a7340dd9107fd10461510d4c14d25d7c55bf4e531563d19fb0b6e29ef9b48'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.2/hetzner-k3s-macos-amd64', using: :curl
      sha256 'e761e5ac0855770ab2e87d95bef1962a98bdb3709e5539a05cb3b4c67557f6ef'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.2/hetzner-k3s-linux-arm64', using: :curl
      sha256 '7d648f2835fecdc0b23b2b7ce25408723094897c167f6458626eb5e0bab2fc5f'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.2/hetzner-k3s-linux-amd64', using: :curl
      sha256 'df9b1bf4e68ee50fd52ecbc6a0228b7202cf3c40e842355fecc2dcb15569aa12'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
