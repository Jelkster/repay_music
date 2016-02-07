include BrowserFactory
require 'yaml'

single_browser_instance = build_firefox
$page_config = YAML.load_file('config/pages.yml')

Before do
  Donation.destroy_all
  @browser = single_browser_instance
  @browser.cookies.clear
end

After do
  Donation.destroy_all
  single_browser_instance.refresh
end

at_exit do
  Donation.destroy_all
  single_browser_instance.close
end