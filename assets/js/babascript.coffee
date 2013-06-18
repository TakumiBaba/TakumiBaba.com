socket = io.connect "http://#{location.host}"

socket.on "pong", (socket)->
  console.log socket

$ ->
  socket.emit 'ping',
    hoge: "fuga"
  socket.emit "linda-test",
    hoge: "fuga"