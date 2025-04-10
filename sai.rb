# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sai < Formula
  desc "CLI tool for the SAI Platform - ArenaX Labs"
  homepage "https://competesai.com"
  version "0.0.12"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/axl-binaries/sai/v0.0.12/sai_0.0.12_darwin_amd64.tar.gz"
      sha256 "221d0896aabda579965621e6c0c4d3e97ad2a821c44ead1e7fb3b4ae73d817f8"

      def install
        bin.install "sai"
      end
    end
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/axl-binaries/sai/v0.0.12/sai_0.0.12_darwin_arm64.tar.gz"
      sha256 "e23d3f3254308c2a8560e9de4c018861c16882d5b657e0c3da6b001dcc7c1e02"

      def install
        bin.install "sai"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://storage.googleapis.com/axl-binaries/sai/v0.0.12/sai_0.0.12_linux_amd64.tar.gz"
        sha256 "80cb7e3569bd30bb5e1f9a8e9806739916c16a12baa84b7cbbc8f59c83c33345"

        def install
          bin.install "sai"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://storage.googleapis.com/axl-binaries/sai/v0.0.12/sai_0.0.12_linux_arm64.tar.gz"
        sha256 "9f5216505967f6b701311d1f319a4cc8482bab3c47804a95162f341540e13cb3"

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
