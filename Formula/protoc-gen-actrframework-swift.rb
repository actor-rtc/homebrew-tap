class ProtocGenActrframeworkSwift < Formula
  desc "Swift protoc plugin for generating ACTR framework stubs"
  homepage "https://github.com/actor-rtc/framework-codegen-swift"
  version "0.1.3"
  url "https://github.com/actor-rtc/framework-codegen-swift/releases/download/v#{version}/protoc-gen-actrframework-swift-macos-arm64.zip"
  sha256 "4391253bb01ee4fe89a38be7c5a0d2911a55a9a10abe0020e2ff30808a1c1465"

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
