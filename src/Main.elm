module Main (..) where

import Task exposing (Task)
import Html exposing (Html)
import Effects exposing (Effects)
import App.Model exposing (..)
import App.View exposing (view)
import App.Update exposing (Action, init, update)
import StartApp


app : StartApp.App Model
app =
  StartApp.start
    { init = init
    , view = view
    , update = update
    , inputs = []
    }


port tasks : Signal (Task Effects.Never ())
port tasks =
  app.tasks


main : Signal Html
main =
  app.html
