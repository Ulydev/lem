io.stdout:setvbuf'no' 

love.window.setTitle("Press Space to emit event")

event = require "lem" --require the library

manager = event:new() --create new event manager

manager:on('say', function (params) --register event
  print(params.author.." says: "..params.message)
end)

function love.keypressed(key)
  
  if key == "space" then
    manager:emit('say', { --emit event
      author = "System",
      message = "Hello there. Wanna 'sudo rm -rf /'?"
    })
  end
  
end