module Question.Model (Model, initialModel) where


type alias Model =
  { category : String
  , difficulty : String
  , text : String
  , response : String
  }


initialModel : Model
initialModel =
  { category = "Movie"
  , difficulty = "Hard"
  , text = "What's the name of the first Star Wars movie?"
  , response = ""
  }
