lem
==============

lem is a simple event manager library that allows you to register and trigger events in your game / application.

It works the same way as NodeJS's EventEmitter.

Setup
----------------

```lua
local event = require "lem" --require the library
```

Usage
----------------

Create an event manager
```lua
local myEventManager = event:new()
```

Register an event
```lua
myEventManager:on('do-something', function ()
  print("I am doing something.")
end)
```

Emit an event
```lua
myEventManager:emit('do-something')
```

You can also pass parameters in a table:
```lua
myEventManager:on('say', function (params)
  print(params.message)
end)

myEventManager:emit('say', { message = "Hi!" })
```
