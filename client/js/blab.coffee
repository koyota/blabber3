Template.blab.helpers
  allMessages: -> Messages.find({})

Template.chat_box.events
  'submit #chat-box-form': (e, t) ->
    message = t.find('#message').value
    email = Meteor.user().emails[0].address
    Messages.insert({"email": email, "content": message})
    e.preventDefault()