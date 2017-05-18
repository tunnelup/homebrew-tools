class Tunnelup < Formula
  desc "Tunnelup cli tools"
  homepage "https://tunnelup.com"
  url "https://github.com/tunnelup/tunnelup-cli.git",
    revision: "361e8450d748cb729af1495ecab9ced5460d06f0"

  head "https://github.com/tunnelup/tunnelup-cli.git"

  depends_on "crystal-lang"

  def install
    system "crystal deps"
    system "make"
    bin.install "tunnelup"
  end
end
