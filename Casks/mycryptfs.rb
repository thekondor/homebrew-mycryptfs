cask "mycryptfs" do
  version "1.3.0-rc1"
  sha256 "d6a59e13cb76b8bef46f1cde9f85339dcdcd03680e2337e9b0ecd7fca8641e7c"

  url "https://github.com/thekondor/mycryptfs/releases/download/#{version}/MyCryptFS-1.3.0-rc1.20260301+bbda845-release.notarized.pkg"
  name "MyCryptFS"
  desc "macOS client for gocryptfs encrypted containers with native Finder integration"
  homepage "https://github.com/thekondor/mycryptfs"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  pkg "MyCryptFS-1.3.0-rc1.20260301+bbda845-release.notarized.pkg"

  uninstall quit:    "xyz.kondor.mycryptfs",
            pkgutil: "xyz.kondor.mycryptfs"
end
