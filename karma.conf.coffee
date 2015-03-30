module.exports = (config)->
  config.set
    files: [
      { pattern: 'app/libs/**/*.js', included: false }

      { pattern: 'app/scripts/**/*.js', included: false }
      { pattern: 'app/scripts/**/*.coffee', included: false }
      { pattern: 'app/scripts/**/*.map', included: false }
      { pattern: 'app/scripts-test/**/*.js', included: false }
      { pattern: 'app/scripts-test/**/!(main-test).coffee', included: false }
      { pattern: 'app/scripts-test/**/*.map', included: false }

      'app/scripts-test/main-test.coffee'
    ]
    exclude: [
    ]

    browsers: ['PhantomJS']
    ## Chrome, ChromeCanary, Firefox, IE (only Windows), Opera, PhantomJS, Safari (only Mac)

    reporters: [ 'dots' ]
    preprocessors:
      'app/**/*.coffee': 'coffee'

    coffeePreprocessor:
      options:
        sourceMap: true
      transformPath: (filepath)->
        return filepath.replace /\.coffee$/, '.js'

    plugins: [
      'karma-coffee-preprocessor'
      'karma-jasmine'
      'karma-requirejs'
      'karma-chrome-launcher'
      'karma-firefox-launcher'
      'karma-phantomjs-launcher'
    ]

    basePath: ''
    autoWatch : true
    captureTimeout: 60000
    colors: true
    frameworks: ['jasmine', 'requirejs']
    logLevel: config.LOG_DEBUG
    port: 9876
    reportSlowerThan: 500
    runnerPort: 9100
    singleRun : false
