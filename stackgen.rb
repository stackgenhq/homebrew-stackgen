# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stackgen < Formula
  desc "Generative Infrastructure from Code"
  homepage "https://stackgen.com/"
  version "0.35.4"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.stackgen.com/binaries/v0.35.4/appcd_0.35.4_darwin_amd64.tar.gz"
      sha256 "5048d7780dd8d85a89d11e30fccc85a3321e2ddfdb5648f55ca5d10ee5431003"

      def install
        bin.install "stackgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.stackgen.com/binaries/v0.35.4/appcd_0.35.4_darwin_arm64.tar.gz"
      sha256 "d385c4edfe625ba2d0289bb2c33611f2ee06b90ef73af6526bfe519d1e3e991c"

      def install
        bin.install "stackgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.35.4/appcd_0.35.4_linux_amd64.tar.gz"
        sha256 "a32a411c1ce284ae1a495e344e6c340087263bfe36051cf47ae2ce3a66b5c0c5"

        def install
          bin.install "stackgen"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.35.4/appcd_0.35.4_linux_arm64.tar.gz"
        sha256 "1b7abf48d22d4724ae09cea449e5191a9d5983c5e4e0d5f8d18d8705b4f72365"

        def install
          bin.install "stackgen"
        end
      end
    end
  end
end
