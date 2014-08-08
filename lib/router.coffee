requireLogin = (pause) ->
  Router.go 'login' unless Meteor.userId()

autoLogin = (pause) ->
  Router.go 'blab' if Meteor.userId()

Router.map ->
  @route 'registration'
  @route 'login', {path: '/'}
  @route 'success'
  @route 'htmlcall'
  @route 'blab'

Router.onBeforeAction autoLogin,
  only: ['login', 'registration']
Router.onBeforeAction requireLogin,
  only: ['blab', 'success']
