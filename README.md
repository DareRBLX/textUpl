# textUpl

A Roblox module for uploading and retrieving text from text hosting services

## Supported services

- Hastebin

## Usage

#### Make sure you have HttpService on

Select home at the top of the Roblox Studio window, click Game Settings, click Options, and switch on HttpService


#### Import the module.

```lua
local textUpl = require(2687169732)
```
You can also selfhost the module, by taking the module [here](https://www.roblox.com/library/2687169732/TextUpl) and requiring that from inside your game.

### Hastebin

#### Initialize the Hastebin module

```lua
local haste = textUpl.haste()
```

#### Save
```lua
haste.save("Hello, world!")
```
Returns the key, for example `ayegejarob`
#### Retrieve
```lua
haste.load("ayegejarob")
```
Returns the text, for example `Hello, world!`