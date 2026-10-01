class Jaketts < Formula
  include Language::Python::Virtualenv

  desc "Local CLI and desktop text-to-speech powered by Kokoro-82M"
  homepage "https://github.com/ofalltrades/jaketts"
  url "https://files.pythonhosted.org/packages/81/a7/1a37399ed848ac71e4d8decd2a006c6f0f4a4a6d05fd204a51c113d45321/jaketts-1.0.7.tar.gz"
  sha256 "8450d6d0e3ec23b5d60eeb6492ad5c9bc6ebaa76960a10e8590e45f24cce4a34"
  license "MIT"

  depends_on :macos
  depends_on "libsndfile"
  depends_on "portaudio"
  depends_on "python@3.12"
  depends_on "python-tk@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "jaketts #{version}", shell_output("#{bin}/jtts -v")
  end
end
