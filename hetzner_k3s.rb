class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '0.6.2'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.2/hetzner-k3s-mac-arm64', using: :curl
      sha256 'a3fceb129323055039a9444d576da6baac5e84f56c7517d36deac4e1ab14e1c0'

      def install
        bin.install 'hetzner-k3s-mac-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.2/hetzner-k3s-mac-amd64', using: :curl
      sha256 '36c138793c5d2384c00d52671892b38120cb9974932d4e9386477db5af80e4a5'

      def install
        bin.install 'hetzner-k3s-mac-amd64' => 'hetzner-k3s'
      end
    end
  end
end
