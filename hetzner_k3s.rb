class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '0.6.4'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.4/hetzner-k3s-mac-arm64', using: :curl
      sha256 'fdabfd5707ae9ecbe38c8723f3a466d07791d07c6cb4ee468808f43d84d0b9f3'

      def install
        bin.install 'hetzner-k3s-mac-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.4/hetzner-k3s-mac-amd64', using: :curl
      sha256 '570ae776a3b9ee3d4d144de1584f67b19be80a8f2e214d627563cde658af2a93'

      def install
        bin.install 'hetzner-k3s-mac-amd64' => 'hetzner-k3s'
      end
    end
  end
end
