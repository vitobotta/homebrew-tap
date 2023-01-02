class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '0.6.9'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.9/hetzner-k3s-mac-arm64', using: :curl
      sha256 '69069bac1e203144e6e673e37b6160e1dc91fda092570a7ea66f83ee48be0257'

      def install
        bin.install 'hetzner-k3s-mac-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.9/hetzner-k3s-mac-amd64', using: :curl
      sha256 'af65c3c03b5dfa557b217558fcd2cd30b4416b95e4d5ba801fa60f5c13529093'

      def install
        bin.install 'hetzner-k3s-mac-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.9/hetzner-k3s-linux-x86_64', using: :curl
    sha256 '43f1ff955e9ece66f51452c5fb39a1ef319f459ca4278c386ed7e6aeae41048c'

    def install
      bin.install 'hetzner-k3s-linux-x86_64' => 'hetzner-k3s'
    end
  end
end
