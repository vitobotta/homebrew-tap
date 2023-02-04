class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '1.0.8'
  license 'MIT'

  depends_on "libssh2"
  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v1.0.8/hetzner-k3s-mac-arm64', using: :curl
      sha256 '7d6f12d2656d3ecfc3d0c0ab50dbbd60c170152dd0d2e6a791c9de47d2073832'

      def install
        bin.install 'hetzner-k3s-mac-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v1.0.8/hetzner-k3s-mac-amd64', using: :curl
      sha256 '3648b048c675bc556a66ed01a23a26337a1dfa7ea6c8415069fbdf15e07938ec'

      def install
        bin.install 'hetzner-k3s-mac-amd64' => 'hetzner-k3s'
      end
    end
  end
end
