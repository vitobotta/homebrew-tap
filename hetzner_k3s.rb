class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.6.0'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.6.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 '81d495b23140f63ab4fb85b59d131e15770d65095981b588a53880faca7fcfc0'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.6.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 '06009e55eb538d5501dc66df2dbbbea58e253eaab1e932297023d3aaed3d3b8a'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.6.0/hetzner-k3s-linux-arm64', using: :curl
      sha256 'cfdd9bbc1b69e267b5fa36755f23707b04b312351ff4ab174cf01fbdc3115ec5'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.6.0/hetzner-k3s-linux-amd64', using: :curl
      sha256 '6c51643c6c0344f1187432aa0c0949425fc75a511292fcfede101f6c4b1d47c9'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
