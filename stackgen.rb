# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stackgen < Formula
  desc "Generative Infrastructure from Code"
  homepage "https://stackgen.com/"
  version "0.49.2"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.stackgen.com/binaries/v0.49.2/appcd_0.49.2_darwin_amd64.tar.gz"
      sha256 "9c8a2169c77be34742a54916ac890f9171f1b8793fd4aaa9468acbba3e224cc7"

      def install
        bin.install "stackgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.stackgen.com/binaries/v0.49.2/appcd_0.49.2_darwin_arm64.tar.gz"
      sha256 "f33f276e61a882c8b5c2b98d87aeb578b7f72a77bb11ea894d3e9d9f2058c037"

      def install
        bin.install "stackgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.49.2/appcd_0.49.2_linux_amd64.tar.gz"
        sha256 "071eeef0e0b1028d48799e38a507ae3984e676aede069d44bd466e9bce9418d5"

        def install
          bin.install "stackgen"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.49.2/appcd_0.49.2_linux_arm64.tar.gz"
        sha256 "4d938cf568306407b1720ca5374516c66ffaa319e61719f950f203db0c06a0fd"

        def install
          bin.install "stackgen"
        end
      end
    end
  end
end
