# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stackgen < Formula
  desc "Generative Infrastructure from Code"
  homepage "https://stackgen.com/"
  version "0.50.1"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.stackgen.com/binaries/v0.50.1/appcd_0.50.1_darwin_amd64.tar.gz"
      sha256 "94de04669693ad191168ddd67a66e51e2d36f5cf859366e51f7d350c3b299b4b"

      def install
        bin.install "stackgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.stackgen.com/binaries/v0.50.1/appcd_0.50.1_darwin_arm64.tar.gz"
      sha256 "7e23d3c2afc71770126a446ed7d4048ae9f064366ce2c6efb167a5868772f8cf"

      def install
        bin.install "stackgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.50.1/appcd_0.50.1_linux_amd64.tar.gz"
        sha256 "e2c9a556d01d53f064ca211ec9fd7742b6cdd5d3b6bf7b255b2af3dcad233bce"

        def install
          bin.install "stackgen"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.50.1/appcd_0.50.1_linux_arm64.tar.gz"
        sha256 "0934ba56d53167eb77373900ac54be502f6e03ca0b981e7ef6de09d0250d8fc2"

        def install
          bin.install "stackgen"
        end
      end
    end
  end
end
