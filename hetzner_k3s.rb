class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.10.0'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.10.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 'b07aa599d6bf4c58f1343c32dffdfdc722a338cf8766c6c36539b5ef9b3cfaa1'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.10.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 '99ea1f7ba05e477b645296c69856fa09a31ed4e52525b80ecdc9b8cba7d7e866'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.10.0/hetzner-k3s-linux-arm64', using: :curl
      sha256 '4f1d6587707ccd195eed1aebb59fbfbbbd633485b14886c3389f6f86bd9bdc36'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.10.0/hetzner-k3s-linux-amd64', using: :curl
      sha256 'ab548d0b2f1ed193d233154c20b5c96a9318d47f3b6b9fa96d1908127ce5f991'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
