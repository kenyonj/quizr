module Question.Update (Action(..), init, update) where

import Question.Model exposing (..)
import Effects exposing (Effects)


type Action
  = Noop
  | UpdateResponse String


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

