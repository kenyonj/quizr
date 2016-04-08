module App.View (view) where

import Html exposing (..)
import Question.View
import App.Model exposing (Model)
import App.Update exposing (Action(HandleQuestionAction))


view : Signal.Address Action -> Model -> Html
view address model =
  div
    []
    [ pageTitle
    , Question.View.view (Signal.forwardTo address HandleQuestionAction) model.currentQuestion
    ]


pageTitle : Html
pageTitle =
  h1 [] [ text "QuizR" ]
