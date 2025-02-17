# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloud2code < Formula
  desc "Convert your cloud resources to tfstate files"
  homepage "https://stackgen.com/"
  version "0.1.8"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.stackgen.com/binaries/v0.1.8/cloud2code_0.1.8_darwin_amd64.tar.gz"
      sha256 "42834a9c096eba50f08d71a0bc7e3991600a02e8254bc91496b8bf9c19514240"

      def install
        bin.install "cloud2code"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.stackgen.com/binaries/v0.1.8/cloud2code_0.1.8_darwin_arm64.tar.gz"
      sha256 "c92b44414475879977d20fd1feb090086a79fe2c04e24fa09d9704a1c5ffdb5f"

      def install
        bin.install "cloud2code"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.1.8/cloud2code_0.1.8_linux_amd64.tar.gz"
        sha256 "7f04414f6d4d0a6cd20b1536688f532e7da0de44b03bf23669ec0363401542f0"

        def install
          bin.install "cloud2code"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.1.8/cloud2code_0.1.8_linux_arm64.tar.gz"
        sha256 "2688c4ef2fd68db1f192b40e833ddf180645954e3441ef9c3e817ec2822bac17"

        def install
          bin.install "cloud2code"
        end
      end
    end
  end
end
