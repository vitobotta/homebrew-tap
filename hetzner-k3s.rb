class HetznerK3s < Formula
  desc "This is a CLI tool to quickly create and manage Kubernetes clusters in Hetzner Cloud using the lightweight Kubernetes distribution k3s from Rancher."
  homepage "https://github.com/vitobotta/hetzner-k3s"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.1/hetzner-k3s-mac-arm64", using: :curl
      sha256 "68a6ba28ec7b9f1ce06da3c5148d1854b3f6ccef2b400ca9f4a6636da03598ed"

      def install
        bin.install "hetzner-k3s-mac-arm64" => "hetzner-k3s"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.1/hetzner-k3s-mac-amd64", using: :curl
      sha256 "63351726e68b9ccaa7964a8dbf367b574dc8ab70e6e1c9f9c8c84aff9fd5bd73"

      def install
        bin.install "hetzner-k3s-mac-amd64" => "hetzner-k3s"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/vitobotta/hetzner-k3s/releases/download/v0.6.1/hetzner-k3s-linux-x86_64", using: :curl
      sha256 "d23546ace7fbee88905fa025a2efa9990088b2f1ad5fd076ad5aea9371d8652b"

      def install
        bin.install "hetzner-k3s-linux-x86_64" => "hetzner-k3s"
      end
    end
  end

  depends_on "kubectl" => :required
end
