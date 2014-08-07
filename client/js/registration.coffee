createUser = (email, password) ->
  { email: email, password: password }



Template.registration.events

  'submit #registration-form' : (e,t) ->

    email = t.find('#accounts-email').value
    password = t.find('#accounts-password').value
    confirm = t.find('#accounts-confirm').value

    user = createUser(email, password)
    Accounts.createUser user, (error) ->
      if error
        console.log error
      else
        console.log "sucess! you are loggied in"
        console.log Meteor.user()
    console.log email
    e.preventDefault()
    false
