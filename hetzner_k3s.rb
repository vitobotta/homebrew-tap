class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.5.0'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.5.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 'fab3332972398598307c833fa76640cd650dbd571d0e86f7da18f732ebc32362'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.5.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 '9ec9e232512e6ee0f58303811131d6df5f21eaa7670d9e373a590f27dd2b115d'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.5.0/hetzner-k3s-linux-arm64', using: :curl
      sha256 '2105a39a63a6fb3808d2fcb31b0262b9ced35880350b0850285062f1a018db2c'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.5.0/hetzner-k3s-linux-amd64', using: :curl
      sha256 '794332679d6891e7a3b678ab6e4c0d7af45662359f44c7f7a6d05113fd80b78f'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
