# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Qrep < Formula
  desc "interactive query-replace"
  homepage "bckly.com/qrep"
  url "https://github.com/loganmhb/qrep/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "4fd9860aff02e32b075f1d15ab64e642c2cd50c23e13074531e47a04773c7a06"

  def install
    bin.install "qrep"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test qrep`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/qrep"
  end
end
