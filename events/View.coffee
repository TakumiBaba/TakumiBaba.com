exports.View = (app)->
  index: (req, res)->
    return res.render "index"