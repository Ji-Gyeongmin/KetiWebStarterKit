define ['app'], (app)->
  app.filter 'reverse', ()->
    return (input, uppercase)->
      out = ""
      for idx, inputItem of input
        out = input.charAt(idx) + out
      if uppercase
        out = out.toUpperCase()
      return out
