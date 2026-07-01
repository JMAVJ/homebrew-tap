class ActuallyNaturalScrolling < Formula
  desc "Keep natural scrolling on the trackpad, normal scrolling on scroll-wheel"
  homepage "https://github.com/JMAVJ/ActuallyNaturalScrolling"
  url "https://github.com/JMAVJ/ActuallyNaturalScrolling/releases/download/v0.1.0/ActuallyNaturalScrolling.tar.gz"
  sha256 "499ec1354b474b13705898dcf3187e6ae92f0a44974574344609397c89f6a00d"
  license ""

  def install
    bin.install "ActuallyNaturalScrolling" => "actually-natural-scrolling"
  end

  service do
    run [opt_bin/"actually-natural-scrolling"]
    keep_alive true
    run_at_load true
    log_path var/"log/actually-natural-scrolling.log"
    error_log_path var/"log/actually-natural-scrolling-error.log"
  end

  test do
    # Checks if the binary exists where it should
    assert_predicate bin/"actually-natural-scrolling", :exist?
    # Checks if the binary has execute permissions
    assert_predicate bin/"actually-natural-scrolling", :executable?
  end
end
