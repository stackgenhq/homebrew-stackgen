# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stackgen < Formula
  desc "Generative Infrastructure from Code"
  homepage "https://stackgen.com/"
  version "0.47.3"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.stackgen.com/binaries/v0.47.3/appcd_0.47.3_darwin_amd64.tar.gz"
      sha256 "eb829f4a3cfe41ede8f8e62b5e9ca2d2b26a2bd063f1b4db9e5df4dc1dcf8624"

      def install
        bin.install "stackgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.stackgen.com/binaries/v0.47.3/appcd_0.47.3_darwin_arm64.tar.gz"
      sha256 "eb7b4e8c30030a9b40df58c5f1d783c48c3fa78e0bf2c37ead2406dbb711f24b"

      def install
        bin.install "stackgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.47.3/appcd_0.47.3_linux_amd64.tar.gz"
        sha256 "4943184f15c50bdfde5ce91a56849869918bd08d2c773524d0ef19052d554573"

        def install
          bin.install "stackgen"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.47.3/appcd_0.47.3_linux_arm64.tar.gz"
        sha256 "796182cb6f69ae8897203feb14f163f4b9626ab480d3762e5c248646d5eead4c"

        def install
          bin.install "stackgen"
        end
      end
    end
  end
end
