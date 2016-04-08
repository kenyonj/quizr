module Question.View (view) where

import Html exposing (..)
import Html.Attributes exposing (for, id, type', placeholder)
import Html.Events exposing (on, targetValue)
import Util.CustomEvent exposing (onSubmit)
import Question.Model exposing (Model, Status(..))
import Question.Update exposing (Action(..))


view : Signal.Address Action -> Model -> Html
view address question =
  section
    []
    [ dl
        []
        [ dt [] [ text "Category" ]
        , dd [] [ text question.category ]
        , dt [] [ text "Difficulty" ]
        , dd [] [ text question.difficulty ]
        ]
    , h2 [] [ text question.text ]
    , h3 [] [ text (questionStatus question.status) ]
    , form
        [ onSubmit address AnswerQuestion ]
        [ label [ for "answer" ] [ text "What's your answer?" ]
        , input
            [ type' "text"
            , id "answer"
            , on "input" targetValue (Signal.message address << UpdateResponse)
            ]
            []
        , input [ type' "submit", placeholder "Submit your answer" ] []
        ]
    ]


questionStatus : Status -> String
questionStatus status =
  case status of
    Correct ->
      "Correct"

    Incorrect ->
      "Incorrect"

    _ ->
      ""
