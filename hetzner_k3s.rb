class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '0.6.3'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.2/hetzner-k3s-mac-arm64', using: :curl
      sha256 '88ce477b91912c594d868b61f1c9c92e9e9d5b27688cd1c9009a445642aa2e8b'

      def install
        bin.install 'hetzner-k3s-mac-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.2/hetzner-k3s-mac-amd64', using: :curl
      sha256 '1d3dbbe7ee89d005ccb940822320d0bb74537e11d48fa10c2e26bf81b44418b5'

      def install
        bin.install 'hetzner-k3s-mac-amd64' => 'hetzner-k3s'
      end
    end
  end
end
