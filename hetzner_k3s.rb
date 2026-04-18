class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.4.8'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.8/hetzner-k3s-macos-arm64', using: :curl
      sha256 'a1b209472ac9566081c417ac01b138d200e4b64818b664a89c2a4733c7e5e5ef'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.8/hetzner-k3s-macos-amd64', using: :curl
      sha256 'd021c7248e0da23d3e44148ef6d3457792ba0cb17c6ede5574fc4116da0ae021'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.8/hetzner-k3s-linux-arm64', using: :curl
      sha256 '6f69f37ecdfceac87ea51810b6ef4cb527973d2d948cf98b0b5599639fac0687'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.8/hetzner-k3s-linux-amd64', using: :curl
      sha256 'a6c03ad2638261209f2eb8bd040a4c6dca0b78343ff5a096686e0683ef22cf36'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
