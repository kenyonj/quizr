module Question.View (view) where

import Html exposing (..)
import Html.Attributes exposing (for, id, type', placeholder)
import Html.Events exposing (on, targetValue)
import Question.Model exposing (Model)
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
    , form
        []
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
