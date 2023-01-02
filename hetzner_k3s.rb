class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '1.0.1'
  license 'MIT'

  depends_on "libssh2"
  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v1.0.1/hetzner-k3s-mac-arm64', using: :curl
      sha256 '300c744ca10bdc2080a81b83072b68f1a963fb6438a00d3caa988e031a2b08e8'

      def install
        bin.install 'hetzner-k3s-mac-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v1.0.1/hetzner-k3s-mac-amd64', using: :curl
      sha256 '7189ecd7d38ccf606093e12050cabe648464b6adfe53cd6f2917dacf18b25106'

      def install
        bin.install 'hetzner-k3s-mac-amd64' => 'hetzner-k3s'
      end
    end
  end
end
