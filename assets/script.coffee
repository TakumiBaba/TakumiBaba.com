class Application extends Backbone.Router

  routes:
    "": "ja"
    "ja": "ja"
    "en": "en"

  ja: ->
    console.log 'ja'

  en: ->
    console.log "en"

app = new Application()
Backbone.history.start({pushState: true})