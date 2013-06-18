exec = require("child_process").exec;

exports.SocketIO = (app, io)->
  console.log 'hoge'
  io.sockets.on "connection", (socket)->
    socket.on "ping", (data)->
      console.log data
      socket.emit "pong"
    socket.on "test", (data)->
      console.log data
      # socket.emit "hoge"

    socket.on "linda-test", (data)->
      tuple = "\'[\"say\", \"fuga\"]\'"
      command = "linda-rocketio write -tuple #{tuple} -base http://linda.masuilab.org -space takumibaba"
      exec command, (err, stdout, stderr)->
        throw err if err
        throw stderr if err
        console.log 'dekita!'
        console.log stdout