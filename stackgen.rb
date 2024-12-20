# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stackgen < Formula
  desc "Generative Infrastructure from Code"
  homepage "https://stackgen.com/"
  version "0.36.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.stackgen.com/binaries/v0.36.0/appcd_0.36.0_darwin_amd64.tar.gz"
      sha256 "9627e8d06fdb03e283e9faae6358177345d966dd6c46fe6dd2690fc98395b0a8"

      def install
        bin.install "stackgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.stackgen.com/binaries/v0.36.0/appcd_0.36.0_darwin_arm64.tar.gz"
      sha256 "9bacd800d85accbd692f5cea911ffc2796255bf1b0bc23067bd28ba80acb4583"

      def install
        bin.install "stackgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.36.0/appcd_0.36.0_linux_amd64.tar.gz"
        sha256 "5d7e3c6f1f9d9c9ad4b28f8cd879b051d028c7f2d068afbb9e7972a2808bc0c5"

        def install
          bin.install "stackgen"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.36.0/appcd_0.36.0_linux_arm64.tar.gz"
        sha256 "8c60b80c58b40076c49a3c1db3a048b10af1b67a962559a9e3e17e74fcc04362"

        def install
          bin.install "stackgen"
        end
      end
    end
  end
end
