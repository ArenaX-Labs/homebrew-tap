# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sai < Formula
  desc "SAI CLI"
  homepage "https://sai.arenaxlabs.dev"
  version "0.0.2"
  license "Proprietary"

  depends_on "uv"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/axl-binaries/sai/v0.0.2/sai_0.0.2_darwin_amd64.tar.gz"
      sha256 "e8522499905d4f5307f278925c86814b003f76d5ce27367146430d1cf0af9ed1"

      def install
        bin.install "sai"
      end
    end
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/axl-binaries/sai/v0.0.2/sai_0.0.2_darwin_arm64.tar.gz"
      sha256 "9a9d8724cbf30240b7b614ec34814873aad6350c3c9629102c4d49b67a41ef55"

      def install
        bin.install "sai"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://storage.googleapis.com/axl-binaries/sai/v0.0.2/sai_0.0.2_linux_amd64.tar.gz"
        sha256 "08ecbb6503a9346d4ae098290b1bb6e304c584750acdf4851802e19f1841889e"

        def install
          bin.install "sai"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://storage.googleapis.com/axl-binaries/sai/v0.0.2/sai_0.0.2_linux_arm64.tar.gz"
        sha256 "9037e06fdf3c61802d244a086d9f5cee0198ab8e1888adf2423e396142c8a3ce"

        def install
          bin.install "sai"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Before using this software, you MUST authenticate with your API token:

          $ sai login --token YOUR_API_TOKEN

      You can obtain a token from your account settings.
      Without a valid token, this CLI will not function.
    EOS
  end
end
