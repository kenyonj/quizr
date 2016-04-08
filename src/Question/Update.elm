module Question.Update (Action, init, update) where

import Question.Model exposing (..)
import Effects exposing (Effects)


type Action
  = Noop


init : ( Model, Effects Action )
init =
  ( initialModel, Effects.none )


update : Action -> Model -> ( Model, Effects Action )
update action model =
  ( model, Effects.none )
