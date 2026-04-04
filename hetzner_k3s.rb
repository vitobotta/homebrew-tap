class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.4.7'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.7/hetzner-k3s-macos-arm64', using: :curl
      sha256 'f70b1f0c2c3189fc89c971617bf7a9c21225377d1ffa26143190483d5d354bc1'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.7/hetzner-k3s-macos-amd64', using: :curl
      sha256 'bfb171ff367aba5049bcb7a1d0b327b38ba9113b2b9e8030ad77ed912dd27e43'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.7/hetzner-k3s-linux-arm64', using: :curl
      sha256 'c985415d8ec203742cc2e0ac780dc7572e6e4c53b2271e4bfb8fe4a7475262e5'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.7/hetzner-k3s-linux-amd64', using: :curl
      sha256 '32d2916040e1cdb636d685aa3a08f61f1ebb25d24a3a40e05f469432b2a520dd'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
