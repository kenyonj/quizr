module Main (..) where

import Task exposing (Task)
import Effects exposing (Effects)
import Html exposing (..)
import Question.Model exposing (..)
import Question.View
import Question.Update exposing (Action, init, update)
import StartApp


app : StartApp.App Model
app =
  StartApp.start
    { init = init
    , view = view
    , update = update
    , inputs = []
    }


main : Signal Html
main =
  app.html


view : Signal.Address Action -> Model -> Html
view address question =
  div
    []
    [ pageTitle
    , Question.View.view address question
    ]


pageTitle : Html
pageTitle =
  h1 [] [ text "QuizR" ]


port tasks : Signal (Task Effects.Never ())
port tasks =
  app.tasks
