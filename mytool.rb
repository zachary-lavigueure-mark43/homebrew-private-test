require "formula"
require_relative "../custom_download_strategy.rb"

class Wget < Formula
  homepage ""
  url "https://github.com/zachary-lavigueure-mark43/homebrew-private-test/blob/main/mytool.rb", :using => GitHubPrivateRepositoryReleaseDownloadStrategy 
  sha256 "983f7fe3daf96e4c89c0c1cd90bcde9ef9938fc8ee300379f7f361aacca3f09f"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
      system "#{bin}/wget --help"
  end
end