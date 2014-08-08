requireLogin = (pause) ->
  Router.go 'login' unless Meteor.userId()

autoLogin = (pause) ->
  Router.go 'success' if Meteor.userId()

Router.map ->
  @route 'registration'
  @route 'login', {path: '/'}
  @route 'success'
  @route 'htmlcall'

Router.onBeforeAction autoLogin,
  only: ['login', 'registration']
Router.onBeforeAction requireLogin,
  only: 'success'
