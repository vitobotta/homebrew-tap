class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '0.6.5'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.6/hetzner-k3s-mac-arm64', using: :curl
      sha256 '1b7a3034719935bfa935cbb1d2793e228d31e87719a6310d37d18467a861f8ad'

      def install
        bin.install 'hetzner-k3s-mac-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.6/hetzner-k3s-mac-amd64', using: :curl
      sha256 '9a01d4b76c7749f4e0e9654f70c119f31031456a2db8af4a0041ea5627bfe4b4'

      def install
        bin.install 'hetzner-k3s-mac-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.6/hetzner-k3s-linux-x86_64', using: :curl
    sha256 '29a1f56fc566397d9b6e0fabfcf7628e48d5f7193187af2b0c5ccb5cdd7ab1d6'

    def install
      bin.install 'hetzner-k3s-linux-x86_64' => 'hetzner-k3s'
    end
  end
end
