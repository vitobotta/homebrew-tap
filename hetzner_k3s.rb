class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.4.9'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.9/hetzner-k3s-macos-arm64', using: :curl
      sha256 '8cbdcdaf1b38c2745881fd680e25433e4bb4c1ead2f7f9c92ac3836cc86f930d'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.9/hetzner-k3s-macos-amd64', using: :curl
      sha256 '8cfdc4a721747e80e359bbd95165830733ba0cc6216f3ead6034cd292e2ef40c'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.9/hetzner-k3s-linux-arm64', using: :curl
      sha256 'a256238e44fe3271f944e127bb096983aa0d8158c4b71e955bf0c272efff4e19'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.9/hetzner-k3s-linux-amd64', using: :curl
      sha256 'b8f1df74271d5e7f14694df427df03a350d8a53dcf654b4b3180ba1feefa14a3'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
