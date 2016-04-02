class HomePage
  include PageObject

  page_url $page_config['base_url']

  div :jumbotron, id: 'jumbotron'
end