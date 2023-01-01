class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '0.6.7'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.7/hetzner-k3s-mac-arm64', using: :curl
      sha256 '8d4939733d65acf76513a958f3beebee57a14ad64083c0632e2142d8e77a1e8c'

      def install
        bin.install 'hetzner-k3s-mac-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.7/hetzner-k3s-mac-amd64', using: :curl
      sha256 '602ca2ac2d2fe6f77a07b0bb72764740465c52952eb5bcc7b435a7092e4f5c2e'

      def install
        bin.install 'hetzner-k3s-mac-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.7/hetzner-k3s-linux-x86_64', using: :curl
    sha256 '1fc794e30cc04427ee5fecd3139e5165a737be1a5a02eb18d789f3b4ff488998'

    def install
      bin.install 'hetzner-k3s-linux-x86_64' => 'hetzner-k3s'
    end
  end
end
