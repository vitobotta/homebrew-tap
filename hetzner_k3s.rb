class HetznerK3s < Formula
  desc 'This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher.'
  homepage 'https://github.com/vitobotta/hetzner-k3s'
  version '2.4.6'
  license 'MIT'

  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "libyaml"
  depends_on "pcre2"
  depends_on "gmp"
  depends_on "openssl"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.6/hetzner-k3s-macos-arm64', using: :curl
      sha256 '5be8e4b5b4368c49276ec04fe0a5d0bb5fdc584f6e6ebe580c55fc822178a87f'

      def install
        bin.install 'hetzner-k3s-macos-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.6/hetzner-k3s-macos-amd64', using: :curl
      sha256 'd07075daa6893169b2ca42f42eebc1e827193ed94d32cb7f15d300a24bdea564'

      def install
        bin.install 'hetzner-k3s-macos-amd64' => 'hetzner-k3s'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.6/hetzner-k3s-linux-arm64', using: :curl
      sha256 '1fe10ac060cf134848b91a86904cfd4bc5a893a5eb0e56f78e307b4afb4fb633'

      def install
        bin.install 'hetzner-k3s-linux-arm64' => 'hetzner-k3s'
      end
    end
    if Hardware::CPU.intel?
      url 'https://github.com/vitobotta/hetzner-k3s/releases/download/v2.4.6/hetzner-k3s-linux-amd64', using: :curl
      sha256 '46b898da949271ad45c96805b45019e8cc3cb10efe9708809a3c9e393e195b86'

      def install
        bin.install 'hetzner-k3s-linux-amd64' => 'hetzner-k3s'
      end
    end
  end
end
