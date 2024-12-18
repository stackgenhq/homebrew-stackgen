# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloud2code < Formula
  desc "Convert your cloud resources to tfstate files"
  homepage "https://stackgen.com/"
  version "0.0.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.stackgen.com/binaries/v0.0.1/cloud2code_0.0.1_darwin_amd64.tar.gz"
      sha256 "5dffdca639841449dc85781ced37031e0f6c94711338a171ded525a8b257c038"

      def install
        bin.install "cloud2code"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.stackgen.com/binaries/v0.0.1/cloud2code_0.0.1_darwin_arm64.tar.gz"
      sha256 "610e7f2bdc89d28e459f71f2c7e54831853b805999e4faab24bfa4fd99b06f4c"

      def install
        bin.install "cloud2code"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.0.1/cloud2code_0.0.1_linux_amd64.tar.gz"
        sha256 "ae80c2f4ab6d71565bb270a1259a583fef1f10de08207c31086e041af7056cd8"

        def install
          bin.install "cloud2code"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.0.1/cloud2code_0.0.1_linux_arm64.tar.gz"
        sha256 "e7e579c8721695f35c5fb28bbab7aed80da967acd1359ca8d7bc269e803ad382"

        def install
          bin.install "cloud2code"
        end
      end
    end
  end
end
