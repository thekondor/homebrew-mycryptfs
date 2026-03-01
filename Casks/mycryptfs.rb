cask "mycryptfs" do
  version "1.2.0-beta"
  sha256 "ebfd581e91e9727341248bc17228d775a24402f7ada34dbcd703a2883bd63daa"

  url "https://github.com/thekondor/mycryptfs/releases/download/#{version}/MyCryptFS-1.2.0-beta.20260215+89c5f14-release.notarized.pkg"
  name "MyCryptFS"
  desc "macOS client for gocryptfs encrypted containers with native Finder integration"
  homepage "https://github.com/thekondor/mycryptfs"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  pkg "MyCryptFS-1.2.0-beta.20260215+89c5f14-release.notarized.pkg"

  uninstall quit:    "xyz.kondor.mycryptfs",
            pkgutil: "xyz.kondor.mycryptfs"
end
