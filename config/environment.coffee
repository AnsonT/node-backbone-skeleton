oneYear = 1000 * 60 * 60 * 24 * 365

exports.common =
  cookieMaxAge:     oneYear
  publicDir:        'public'
  cookieSecret:     'my.secret.phrase'

exports.development = 
  staticMaxAge:           null
  errorHandling:
    dumpExceptions:       true
    showStack:            true      
  watcherOptions: 
    compass:              'config/config.rb'
    verbose:              true
    package:              'config/jammit.yml'
    packageOut:           'public/js'
    paths:
      'server.coffee':                                {type: 'coffee', out: '.'}
      'util/**/*.coffee':                             {type: 'coffee', out: 'util'}
      'config/**/*.coffee':                           {type: 'coffee', out: 'config'}      
      'server-lib/**/*.coffee':                       {type: 'coffee', out: 'server-lib'}      
      'client/bootstrap/**/*.coffee':                 {type: 'coffee', out: 'compiled/bootstrap', package: true}
      'client/models/**/*.coffee':                    {type: 'coffee', out: 'compiled/models', package: true}
      'client/controllers/**/*.coffee':               {type: 'coffee', out: 'compiled/controllers', package: true}
      'client/views/**/*.coffee':                     {type: 'coffee', out: 'compiled/views', package: true}        
      'client/client-lib/**/*.coffee':                {type: 'coffee', out: 'compiled/lib', package: true}
      'client/templates/**/*.html':                   {type: 'template', out: 'compiled/templates', package: true}      
      
exports.production = 
  staticMaxAge:     oneYear
  errorHandling:    {}    

exports.test = {}