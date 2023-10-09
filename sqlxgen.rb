# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sqlxgen < Formula
  desc "tool to generate sqlx models from schemas and queries"
  homepage "https://github.com/aakash-rajur/sqlxgen"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aakash-rajur/sqlxgen/releases/download/v1.0.1/sqlxgen_Darwin_x86_64.tar.gz"
      sha256 "2e8765f474b974937de6bf5c62947dffaa26f38c0e7698c3b0d702af23af78e8"

      def install
        bin.install "sqlxgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aakash-rajur/sqlxgen/releases/download/v1.0.1/sqlxgen_Darwin_arm64.tar.gz"
      sha256 "5690e66d701b9b29a27c36ff6d0f1080e11ddb4d5e0a4bdfdf24464e60e71f6f"

      def install
        bin.install "sqlxgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aakash-rajur/sqlxgen/releases/download/v1.0.1/sqlxgen_Linux_arm64.tar.gz"
      sha256 "e42aaafe4dbb8a97b01da35103bb0370d127ffada71356778c7c3ee52c361db5"

      def install
        bin.install "sqlxgen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aakash-rajur/sqlxgen/releases/download/v1.0.1/sqlxgen_Linux_x86_64.tar.gz"
      sha256 "5856a09103e78d2de32050c715d6a727071d093faf9425406867dab5174bcc84"

      def install
        bin.install "sqlxgen"
      end
    end
  end

  test do
    system "#{bin}/sqlxgen version"
  end
end
