# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stackboot < Formula
  desc "Generative Infrastructure from Code"
  homepage "https://stackgen.com/"
  version "0.0.1"
  license "Apache License 2.0"
  depends_on :macos

  on_intel do
    url "https://releases.stackgen.com/binaries/v0.0.1/stackboot_0.0.1_darwin_amd64.tar.gz"
    sha256 "703d1ca3753eee74b430d96a115447908b249e025e2867e5234fcdff9a8e57c2"

    def install
      bin.install "stackboot"
    end
  end
  on_arm do
    url "https://releases.stackgen.com/binaries/v0.0.1/stackboot_0.0.1_darwin_arm64.tar.gz"
    sha256 "fc36bc52fdb274f5e2adb15542c5c79f2d70baf4b436430e419304966bea3874"

    def install
      bin.install "stackboot"
    end
  end
end
