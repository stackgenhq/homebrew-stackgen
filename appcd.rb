# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Appcd < Formula
  desc "Generative Infrastructure from Code"
  homepage "https://appcd.com/"
  version "0.17.1"
  license "Apache License 2.0"

  on_macos do
    on_intel do
      url "https://appcd-public-releases.s3.us-east-2.amazonaws.com/binaries/v0.17.1/appcd_0.17.1_darwin_amd64.tar.gz"
      sha256 "92fb57059dc1702bde31b89f6b53f32b442b2ce14c411711e74d2c6fff17bf1f"

      def install
        bin.install "appcd"
      end
    end
    on_arm do
      url "https://appcd-public-releases.s3.us-east-2.amazonaws.com/binaries/v0.17.1/appcd_0.17.1_darwin_arm64.tar.gz"
      sha256 "559309c55ff266ecb3791dd2f077454bdaf4fc6dfaa601d17b5bae37d0a47c11"

      def install
        bin.install "appcd"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://appcd-public-releases.s3.us-east-2.amazonaws.com/binaries/v0.17.1/appcd_0.17.1_linux_amd64.tar.gz"
        sha256 "4b9fb9d52fdc60ffe0ec79e811866d4094dbb02c733c8de6762f609dfe82b71f"

        def install
          bin.install "appcd"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://appcd-public-releases.s3.us-east-2.amazonaws.com/binaries/v0.17.1/appcd_0.17.1_linux_arm64.tar.gz"
        sha256 "3f1ada41f8d799af881ce1da824f52f8ab42448f1e3a45170cf937b707745a0b"

        def install
          bin.install "appcd"
        end
      end
    end
  end
end
