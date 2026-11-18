class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.14.0'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.14.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 'ad7899b0f754a66ef0eb77565520c7e76c642d8d897defa02d8a3c00d177835d'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.14.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 'c956e54541200ea27e85fbf08974b68cc2f719aa330f820517c3ef381fa96712'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.14.0/hetzner-k3s-linux-arm64', using: :curl
      sha256 'c74e650dbd00ffa5aacb212eb6e528effdb5b5b2f5e335627d26f1eb6dbf6b2b'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.14.0/hetzner-k3s-linux-amd64', using: :curl
      sha256 '62d1ae2f0ab2b0338921dc0bd847d846fb085d21e59a0287a60997d77da26bf8'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
