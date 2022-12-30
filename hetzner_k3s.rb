class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '0.6.5'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.5/hetzner-k3s-mac-arm64', using: :curl
      sha256 '42121854ffc7fcc8994415b15d4be34534bec299c9aeaf56009d171feab96af6'

      def install
        bin.install 'hetzner-k3s-mac-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.5/hetzner-k3s-mac-amd64', using: :curl
      sha256 '4229266f81f18ae6f18b4946e0d46f03473870751d1e70126df4d2d32c6999e2'

      def install
        bin.install 'hetzner-k3s-mac-amd64' => 'hetzner-k3s'
      end
    end
  end
end
