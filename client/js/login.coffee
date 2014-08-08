Template.login.events
  'submit #login-form': (e,t) ->

    email = t.find('#accounts-email').value
    password = t.find('#accounts-password').value


    Meteor.loginWithPassword email, password, (error) ->
      if error
        $("h1").html("user not found")
      else
        console.log "success! you are logged in"
        console.log Meteor.user()
        Router.go "success"
    e.preventDefault()
    false

Template.success.events
  'click #logout': (e,t) ->
    Meteor.logout (error) ->
      if error
        console.log error
      else
        console.log "Logout successfully"
        Router.go "login"



