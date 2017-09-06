class P4mergeScript < Formula
  desc 'Script to launch p4merge app from the command line'
  homepage 'https://github.com/Liquidsoul/p4merge-script'
  url 'https://github.com/Liquidsoul/p4merge-script.git', :tag => '1.0.0'
  head 'https://github.com/Liquidsoul/p4merge-script.git', :branch => 'master'

  def install
    bin.install 'p4merge'
  end

  test do
  end
end
