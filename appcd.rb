# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Appcd < Formula
  desc "Generative Infrastructure from Code"
  homepage "https://appcd.com/"
  version "0.17.0"
  license "Apache License 2.0"

  on_macos do
    on_intel do
      url "https://appcd-public-releases.s3.us-east-2.amazonaws.com/binaries/v0.17.0/appcd_0.17.0_darwin_amd64.tar.gz"
      sha256 "6530e1fb0ba82f406cfe2aabf986e0d983ab95aea6bf916d2c6103809de51a59"

      def install
        bin.install "appcd"
      end
    end
    on_arm do
      url "https://appcd-public-releases.s3.us-east-2.amazonaws.com/binaries/v0.17.0/appcd_0.17.0_darwin_arm64.tar.gz"
      sha256 "0bfe15a28b090f5a607335a6ac31c35380192d30b5e41c4470a79c5d3ecdea44"

      def install
        bin.install "appcd"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://appcd-public-releases.s3.us-east-2.amazonaws.com/binaries/v0.17.0/appcd_0.17.0_linux_amd64.tar.gz"
        sha256 "b203409aea499744fb42a4b84f942ff64511f70681beb6f71a5b1d42c0885270"

        def install
          bin.install "appcd"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://appcd-public-releases.s3.us-east-2.amazonaws.com/binaries/v0.17.0/appcd_0.17.0_linux_arm64.tar.gz"
        sha256 "cc1f372e12517df4ae3e85e975e8c2a217f1db63a1a29723c96800ebe85d491e"

        def install
          bin.install "appcd"
        end
      end
    end
  end
end
