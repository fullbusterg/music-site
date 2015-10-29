#
# Copyright (C) 2015 by Looker Data Services, Inc.
# All rights reserved.
#

if typeof(global) is 'undefined'
    window.global = window

global.inspect = require('util').inspect

# Load JSData libraries. The core library must be first.
require 'js-data'
require 'js-data-angular'

# Load our Reflux integration module
require './modules/reflux'

# Include all our modules so they can register with Angular
require './modules/client_schema'
require './modules/composer'
require './modules/dialog'
require './modules/editor'
require './modules/work'

# Include Angular and its extensions
angular = require 'angular'
require 'angular-animate'

############################################################################################################

angular.module 'app', ['ngAnimate', 'composer', 'dialog', 'editor', 'reflux', 'schema', 'work']
    .config ($locationProvider)->
        $locationProvider.html5Mode true

console.log "Classical Music DB Client is Ready"