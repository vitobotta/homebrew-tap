class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.4.5'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.5/hetzner-k3s-macos-arm64', using: :curl
      sha256 '31d69c5666c3e4a96309ca770c80e03d846d1c83754f49679765b1588806c1bd'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.5/hetzner-k3s-macos-amd64', using: :curl
      sha256 '803b2503a9bad0f9dbeadcc8f7ab23844e1d027da6ab27dd627ccd53a6000818'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.5/hetzner-k3s-linux-arm64', using: :curl
      sha256 '0b60c018842fd7f6c53116e439f5e25ec8b0c5d7d04710c81f7d50549e6fb194'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.5/hetzner-k3s-linux-amd64', using: :curl
      sha256 '18bbfe3d066539a967419d052ac0f8b4ad4691f2f76f9f22d7433c10ef28fea5'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
