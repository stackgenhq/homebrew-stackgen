# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stackgen < Formula
  desc "Generative Infrastructure from Code"
  homepage "https://stackgen.com/"
  version "0.39.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.stackgen.com/binaries/v0.39.0/appcd_0.39.0_darwin_amd64.tar.gz"
      sha256 "c9c69341e53ee0b46011e1825583239e92dae6e21634aa93d018815e969fda19"

      def install
        bin.install "stackgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.stackgen.com/binaries/v0.39.0/appcd_0.39.0_darwin_arm64.tar.gz"
      sha256 "7e50bdb91a7a5d20884f4dd6061795314321164157cbd4f062ab5c2421848f3b"

      def install
        bin.install "stackgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.39.0/appcd_0.39.0_linux_amd64.tar.gz"
        sha256 "c9d5b601da391ae9a870637702f8dfcc0fc4578c48c5403d6b2645d2d00a5ad2"

        def install
          bin.install "stackgen"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.39.0/appcd_0.39.0_linux_arm64.tar.gz"
        sha256 "788957289f1c596437ac775a95f4b476626c619604078103b61b96142526def5"

        def install
          bin.install "stackgen"
        end
      end
    end
  end
end
