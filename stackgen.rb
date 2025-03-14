# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stackgen < Formula
  desc "Generative Infrastructure from Code"
  homepage "https://stackgen.com/"
  version "0.48.2"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.stackgen.com/binaries/v0.48.2/appcd_0.48.2_darwin_amd64.tar.gz"
      sha256 "8073c95514a1eeb4633cf862b349824df9c3f14c9a499b2abbeb9a38dc0035f5"

      def install
        bin.install "stackgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.stackgen.com/binaries/v0.48.2/appcd_0.48.2_darwin_arm64.tar.gz"
      sha256 "d98e5454a16d78cd42c5f42e4b5bd4bbec5a5cda7f749e20463a3265cffa809f"

      def install
        bin.install "stackgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.48.2/appcd_0.48.2_linux_amd64.tar.gz"
        sha256 "bcc8c20beaaa44bed7180d0902c6d88a934df3b984d56018c3110372062cec96"

        def install
          bin.install "stackgen"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.48.2/appcd_0.48.2_linux_arm64.tar.gz"
        sha256 "4e39b37349285923dd55cd27da6dbf1922e1e62085404060d1d05921f0f75f28"

        def install
          bin.install "stackgen"
        end
      end
    end
  end
end
