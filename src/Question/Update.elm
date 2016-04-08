module Question.Update (Action(..), init, update) where

import Question.Model exposing (..)
import Effects exposing (Effects)


type Action
  = Noop
  | UpdateResponse String
  | AnswerQuestion


init : ( Model, Effects Action )
init =
  ( initialModel, Effects.none )


update : Action -> Model -> ( Model, Effects Action )
update action model =
  case action of
    Noop ->
      ( model, Effects.none )

    UpdateResponse response ->
      ( { model | response = response }, Effects.none )

    AnswerQuestion ->
      let
        calculateAnswerStatus =
          if model.answer == model.response then
            Correct
          else
            Incorrect
      in
        ( { model | status = calculateAnswerStatus }, Effects.none )
