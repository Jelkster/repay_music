class HomePage
  include PageObject

  page_url $page_config['base_url']

  div :youtube, id: 'youtube'
end