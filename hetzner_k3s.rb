class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.7.0'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.7.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 '77b28ca38ad796fa4b0e52f7dba139ce1e2047a90282397d7c2ae76cb87b8353'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.7.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 '0f914e4fe89b9d6cd4261cac9ad23c94cb30ffa66532ad9b1c2511af5ce45cef'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.7.0/hetzner-k3s-linux-arm64', using: :curl
      sha256 '912cfa2a0837616d9328bbbaa28fa76911ebf4c1dc17b32339ae7a2c7bce60c5'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.7.0/hetzner-k3s-linux-amd64', using: :curl
      sha256 'fa1383c424f84936af70846b075bf1b3d50bd77cb6f3b779cabeb674a7f5dc92'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
