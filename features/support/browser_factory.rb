module BrowserFactory

  def build_firefox
    profile = Selenium::WebDriver::Firefox::Profile.new
    Watir::Browser.new :firefox, :profile => profile
  end
end