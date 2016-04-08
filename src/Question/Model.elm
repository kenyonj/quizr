module Question.Model (Status(Correct, Incorrect), Model, initialModel) where


type Status
  = Correct
  | Incorrect
  | Unaswered

type alias Model =
  { category : String
  , difficulty : String
  , text : String
  , answer : String
  , response : String
  , status : Status
  }


initialModel : Model
initialModel =
  { category = "Movie"
  , difficulty = "Hard"
  , text = "What's the name of the first Star Wars movie?"
  , answer = "Star Wars"
  , response = ""
  , status = Unaswered
  }
