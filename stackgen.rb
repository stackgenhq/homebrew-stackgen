# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stackgen < Formula
  desc "Generative Infrastructure from Code"
  homepage "https://stackgen.com/"
  version "0.35.1"
  license "Apache License 2.0"

  on_macos do
    on_intel do
      url "https://releases.stackgen.com/binaries/v0.35.1/appcd_0.35.1_darwin_amd64.tar.gz"
      sha256 "100272660a0200678e88684c39bcedf120c320e814bea5b24e0df326c1db65b5"

      def install
        bin.install "stackgen"
      end
    end
    on_arm do
      url "https://releases.stackgen.com/binaries/v0.35.1/appcd_0.35.1_darwin_arm64.tar.gz"
      sha256 "fafdeb377de600dcc68faf0bf96c5c1243c1db57451b8593fabea55e3749d79e"

      def install
        bin.install "stackgen"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.35.1/appcd_0.35.1_linux_amd64.tar.gz"
        sha256 "af5ab3685442bf3f66df31f52beeda2f820d70c0d70f3bd55a4800df233ea9fa"

        def install
          bin.install "stackgen"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.35.1/appcd_0.35.1_linux_arm64.tar.gz"
        sha256 "2ef9106fedbf8ddaec74300a29938e988fd4ba24f5a59cd996ec3a86600b8684"

        def install
          bin.install "stackgen"
        end
      end
    end
  end
end
