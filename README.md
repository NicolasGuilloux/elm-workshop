# Elm Workshop


This is a Elm workshop to learn Elm more easily.


## Begin the workshop

To begin, execute `elm-workshop init` to generate a unique ID and to save your pseudo. It will be sent to the website to track your progression.

Then, execute in a terminal `elm-workshop daemon` (a mirror to `elm reactor`) that creates a web server accessible from http://localhost:8000 and that will compile your Elm scripts.

Finally, if you want to test your step, execute `elm-workshop test` from the step folder. And if you want to validate and send to the server your progression, execute `elm-workshop test-all`.


## Commands

This repository provides 2 main commands.


### `elm-workshop`

The `elm-workshop` script provides handy functions designed for this workshop.

- `elm-workshop init`: Initializes the workshop. Ask for your pseudo, and generate a unique id.
- `elm-workshop daemon`: Uses the 8000 port to create a web server and watch the result of the Elm files.
- `elm-workshop test`: Tests the actual step from where the script is started.
- `elm-workshop test-all`: Tests all the steps and send the result to the distant server.


### `elm`

The `elm` script is an alias to point directly to a docker container. For instance, to build an app, just execute `./elm build`.



##  Thanks

Thanks to Jordan Grenat for his [own workspace](https://github.com/jgrenat/elm-workshop).