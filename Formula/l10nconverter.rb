class L10nconverter < Formula
  desc "A command-line tool to convert mobile localization files."
  homepage "https://github.com/Liquidsoul/LocalizationConverter"
  head "https://github.com/Liquidsoul/LocalizationConverter.git"

  def install
    system "make", "release"
    bin.install "release.xcarchive/Products/usr/local/bin/l10nconverter"
  end

  test do
    system "#{bin}/l10nconverter", "help"
  end
end
