# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stackgen < Formula
  desc "Generative Infrastructure from Code"
  homepage "https://stackgen.com/"
  version "0.52.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.stackgen.com/binaries/v0.52.0/appcd_0.52.0_darwin_amd64.tar.gz"
      sha256 "1824b21e417a7da06d05ee10b94533529f3ea7335507dd73027bd8be5ede6275"

      def install
        bin.install "stackgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.stackgen.com/binaries/v0.52.0/appcd_0.52.0_darwin_arm64.tar.gz"
      sha256 "75fea9eeec1784680768f950f2b2262561c4df7f238c27de14c55498e466888d"

      def install
        bin.install "stackgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.52.0/appcd_0.52.0_linux_amd64.tar.gz"
        sha256 "ac0722a2f2e975750b8dfe4583f0ffd1bdc6c7696ddce82cd685de15ddf26d6e"

        def install
          bin.install "stackgen"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.stackgen.com/binaries/v0.52.0/appcd_0.52.0_linux_arm64.tar.gz"
        sha256 "148358930402588b14c56ddb7c3e7cefe5c4d60f1b0964c66d3a20570f9b564d"

        def install
          bin.install "stackgen"
        end
      end
    end
  end
end
