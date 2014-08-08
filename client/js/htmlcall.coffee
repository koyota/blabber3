Template.htmlcall.events
  'click #htmlcall': (e,t) ->
    console.log "got here"
    if Meteor.isServer
      Meteor.methods checkTwitter: ->
        @unblock()
        Meteor.http.call "GET", "http://search.twitter.com/search.json?q=perkytweets"


      #invoke the server method
      if Meteor.isClient
        Meteor.call "checkTwitter", (error, results) ->
          console.log results.content #results.data should be a JSON object
          return
