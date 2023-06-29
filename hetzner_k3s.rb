class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '1.1.3'
  license 'MIT'

  depends_on "libssh2"
  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre"
  depends_on "gmp"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v1.1.3/hetzner-k3s-mac-arm64', using: :curl
      sha256 'ceef939c5d567df66cb0c9a4f7acf655c22dfc10923dcc555923fbbfbf7dcb43'

      def install
        bin.install 'hetzner-k3s-mac-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v1.1.3/hetzner-k3s-mac-amd64', using: :curl
      sha256 '2bffc7453771e5c78586c75d5a3e83cd38c0161b4e0d80ed6f1dbb0008572ffe'

      def install
        bin.install 'hetzner-k3s-mac-amd64' => 'hetzner-k3s'
      end
    end
  end
end
