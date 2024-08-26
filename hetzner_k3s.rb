class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.0.5'
  license 'MIT'

  depends_on "libssh2"
  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre"
  depends_on "gmp"
  depends_on "openssl@1.1"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.0.5/hetzner-k3s-macos-arm64', using: :curl
      sha256 'bbbba087fdb7342f0c5d3dbf197474b09dccc750d02dd3718f5e7aa934ac39f6'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.0.5/hetzner-k3s-macos-amd64', using: :curl
      sha256 '9f43064cf69362317ab8baf1d5a78b7b254bf69c559a9396f331610325a539a1'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end
end
