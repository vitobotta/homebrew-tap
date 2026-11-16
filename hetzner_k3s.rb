class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.12.0'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.12.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 '5db34b0352ba28c30659008673430c37a6f02787419cf411089e83bbe743a448'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.12.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 '1d8f5f0812cd624ca40eb5148ba8e13528d815ccae96387e89304885a52621a9'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.12.0/hetzner-k3s-linux-arm64', using: :curl
      sha256 'cdff8573ad96b8dbd990406607b5eb317a7508e92660c14a85ec7149b37dc9bc'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.12.0/hetzner-k3s-linux-amd64', using: :curl
      sha256 '18cb3adb6bb0126c0709a31f9f0297860d95cff7e4b997f7eb1fec5238944c2a'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
