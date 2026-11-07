class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.8.0'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.8.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 '03e7c58b8c2859e52bace6c7cff3c487ea0b7acad7f2086fec0f5a3aa3e6bec7'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.8.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 '16d8f4b9eb7d11daacb5a36a7cd76817c843d554e05612d9c8b097df541152de'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.8.0/hetzner-k3s-linux-arm64', using: :curl
      sha256 '931bb603b5d336cd128ec610952a6b07b60f8f2b0fe6a18830781dfd781051ac'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.8.0/hetzner-k3s-linux-amd64', using: :curl
      sha256 'ae98f64afc70234196feef8c2c36d6dfd98362a333a0bb3175499d2b1c98623f'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
