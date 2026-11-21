class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.16.0'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.16.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 '3cc498f560e6ff5053dcfe55c5cb6e862160b29b74ffae05acf17dc1f0e6c9a7'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.16.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 '7a920879d1f43f0e8532379587201723a4906aae7b7fe18b863d8657d88471d7'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.16.0/hetzner-k3s-linux-arm64', using: :curl
      sha256 'ebbd0eca617a1807fdb28c9370aab3088016d28fa6a929cbc799e9a7054946d8'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.16.0/hetzner-k3s-linux-amd64', using: :curl
      sha256 '1c0bab321474b41055bb6b9c3d25db0760ec1114b532b1ba2731f748ed79c3bd'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
