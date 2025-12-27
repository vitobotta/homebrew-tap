class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.4.4'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.4/hetzner-k3s-macos-arm64', using: :curl
      sha256 '193d760377f5114bd83e3cb848a504736dd26e188aefa48b7657297cd11a48b6'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.4/hetzner-k3s-macos-amd64', using: :curl
      sha256 '219f42240ac25e44e3bff34eaef3e40ca348759be746d76af84133877f21e202'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.4/hetzner-k3s-linux-arm64', using: :curl
      sha256 '092a79eac9e48ec77c3eb44b6286209fa09a933de73b217b41455ba3fd0f1f71'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.4/hetzner-k3s-linux-amd64', using: :curl
      sha256 '404622e496d6961fcb8b2c7ebe67542b836ed2b3f6c092cc2171b41ee854fa3d'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
