class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '1.0.7'
  license 'MIT'

  depends_on "libssh2"
  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v1.0.7/hetzner-k3s-mac-arm64', using: :curl
      sha256 '2c652ab9283e9bc2fb47c2d9b8b25078846b804c1ca0649f703239c0f7302427'

      def install
        bin.install 'hetzner-k3s-mac-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v1.0.7/hetzner-k3s-mac-amd64', using: :curl
      sha256 '70365227d4643ff9ff3470ed988998a8135aefc162acb26a9a49b656bb356dbf'

      def install
        bin.install 'hetzner-k3s-mac-amd64' => 'hetzner-k3s'
      end
    end
  end
end
