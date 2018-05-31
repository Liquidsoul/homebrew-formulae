class L10nconverter < Formula
  desc "A command-line tool to convert mobile localization files."
  homepage "https://github.com/Liquidsoul/LocalizationConverter"
  url "https://github.com/Liquidsoul/LocalizationConverter.git", :tag => "0.1.0"
  head "https://github.com/Liquidsoul/LocalizationConverter.git", :branch => "develop"

  def install
    system "unset CC; make release"
    bin.install ".build/release/l10nconverter"
  end

  test do
    (testpath/"strings.xml").write <<-EOS.undent
      <?xml version="1.0" encoding="UTF-8"?>
      <resources>
        <string name="app.name">Todo</string>
        <string name="Loading">Loading…</string>
        <string name="Yes">Yes</string>
        <string name="No">No</string>
        <string name="Congratulations">Congratulations "<b>%1$s</b>"! You've done it!</string>
      </resources>
    EOS
    system "#{bin}/l10nconverter", "convertAndroidFile", "strings.xml"
  end
end
