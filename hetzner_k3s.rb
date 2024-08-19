class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.0.3'
  license 'MIT'

  depends_on "libssh2"
  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre"
  depends_on "gmp"
  depends_on "openssl@1.1"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.0.3/hetzner-k3s-macos-arm64', using: :curl
      sha256 'bbbf045bade5a925c06c96b295be8f06ab4aba3786f34317283ae3eee42e5f45'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.0.3/hetzner-k3s-macos-amd64', using: :curl
      sha256 '4f62f77c184dddf03b9441d3c4b4923f76647179404c06e9f430935ee33c4708'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end
end
