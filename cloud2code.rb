# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloud2code < Formula
  desc "Convert your cloud resources to tfstate files"
  homepage "https://stackgen.com/"
  version "0.1.16"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.stackgen.com/binaries/v0.1.16/cloud2code_0.1.16_darwin_amd64.tar.gz"
      sha256 "4c52c48f4107c49f5e70bc235749dca5960e810a484ed70a7eef420df4259409"

      def install
        bin.install "cloud2code"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.stackgen.com/binaries/v0.1.16/cloud2code_0.1.16_darwin_arm64.tar.gz"
      sha256 "30c69f763b081a9e1c383157792c494957325a177c81062ee6c8c79e051f3a71"

      def install
        bin.install "cloud2code"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.1.16/cloud2code_0.1.16_linux_amd64.tar.gz"
        sha256 "3f6b03e35a89b40b84f830e7560e1d42980a91736c9b663033d7de59614ddd37"

        def install
          bin.install "cloud2code"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.1.16/cloud2code_0.1.16_linux_arm64.tar.gz"
        sha256 "bbcb872e44ce65347504f9633beb69c50d395c2e358c4651cd863eea8a0defdb"

        def install
          bin.install "cloud2code"
        end
      end
    end
  end
end
