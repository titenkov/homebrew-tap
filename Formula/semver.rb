# This file was generated by GoReleaser. DO NOT EDIT.
class Semver < Formula
  desc "Calculates semantic version based on the branch and version taken from one of the sources (environment variable, gradle version, package.json, etc.)"
  homepage "https://github.com/titenkov/semver"
  version "0.1.0"

  if OS.mac?
    url "https://github.com/titenkov/semver/releases/download/v0.1.0/semver_0.1.0_Darwin_x86_64.tar.gz"
    sha256 "be0995cbc8de5ea8061422d71ddb56b489184d63a67308d7b9b9e489e239e588"
  elsif OS.linux?
    url "https://github.com/titenkov/semver/releases/download/v0.1.0/semver_0.1.0_Linux_x86_64.tar.gz"
    sha256 "49a388240eacc4a3041e10c630ddce2b5531f6971e0b514981d439303be996d0"
  end
  
  depends_on "git"

  def install
    bin.install "semver"
  end
end
