class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '0.6.8'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.8/hetzner-k3s-mac-arm64', using: :curl
      sha256 'cfcd1ebdeca3ce9deb08313f5a071ce8c0359ad10161117ea81c2a0d89d49949'

      def install
        bin.install 'hetzner-k3s-mac-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.8/hetzner-k3s-mac-amd64', using: :curl
      sha256 'c7db18658b58303640896509b2a60a5082770c89fe5627bae87804186ff3bbbb'

      def install
        bin.install 'hetzner-k3s-mac-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.8/hetzner-k3s-linux-x86_64', using: :curl
    sha256 '8ce223c1cb674dda4433f156af8c9b21c2777619b8e5531de42d51758afba6e0'

    def install
      bin.install 'hetzner-k3s-linux-x86_64' => 'hetzner-k3s'
    end
  end
end
