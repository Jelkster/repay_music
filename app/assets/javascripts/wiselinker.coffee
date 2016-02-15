class Wiselinker
  constructor: ->
    @setup()

  setup: ->
    @handleEvents()
    @makeLinksWise()

  handleEvents: ->
    @pageLoaded()

  makeLinksWise: ->
    $('a').attr('data-push', true)

  pageLoaded: ->
    $(document).off('page:always').on(
      'page:always'
      (event, xhr, settings) =>
        # console.log('Wiselinks page loading completed')
        # console.log xhr.context.URL
        @makeLinksWise()
    )

$ ->
  new Wiselinker

