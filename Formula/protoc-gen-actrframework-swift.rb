class ProtocGenActrframeworkSwift < Formula
  desc "Swift protoc plugin for generating ACTR framework stubs"
  homepage "https://github.com/actor-rtc/framework-codegen-swift"
  version "0.1.4"
  url "https://github.com/actor-rtc/framework-codegen-swift/releases/download/v#{version}/protoc-gen-actrframework-swift-macos-arm64.zip"
  sha256 "b7ce2c7114700e5182d18bfb07c793d2a11206f3f69091c178b1d73123d9f97c"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "protoc-gen-actrframework-swift"
  end

  def caveats
    <<~EOS
      This formula only supports Apple Silicon (arm64).
    EOS
  end
end
