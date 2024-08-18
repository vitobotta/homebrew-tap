class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.0.0'
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
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.0.0/hetzner-k3s-macos-arm64', using: :curl
      sha256 '9106bec91629d9ea197f6d511ca75160738d4b3d9cfa9a694851212d87523ed9'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.0.0/hetzner-k3s-macos-amd64', using: :curl
      sha256 '1322ebb89fca413ad75096dad11021cc4f97594cf12e5566d395a519b70acff5'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end
end
