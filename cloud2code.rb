# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloud2code < Formula
  desc "Convert your cloud resources to tfstate files"
  homepage "https://stackgen.com/"
  version "0.2.7"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.stackgen.com/binaries/v0.2.7/cloud2code_0.2.7_darwin_amd64.tar.gz"
      sha256 "55f12fb40d1f936f5c730a2621e065918ce7ddd4579f575fb24012634db7760d"

      def install
        bin.install "cloud2code"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.stackgen.com/binaries/v0.2.7/cloud2code_0.2.7_darwin_arm64.tar.gz"
      sha256 "56072be478a1088d1cadf5d593b63cd49e04001f26e163e3a4e85004032f1fe3"

      def install
        bin.install "cloud2code"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.2.7/cloud2code_0.2.7_linux_amd64.tar.gz"
        sha256 "3046fdd83e6a832f296d374d81c9fd9329bcc69624ad584f56706393a1b97a6e"

        def install
          bin.install "cloud2code"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.2.7/cloud2code_0.2.7_linux_arm64.tar.gz"
        sha256 "0b4304a5518cf26ec7d42d8c228b73f52a1bd6be10a36af3379d811b60f1d1d0"

        def install
          bin.install "cloud2code"
        end
      end
    end
  end
end
