module Types exposing (..)

import SelectList exposing (SelectList)


type alias ToDo =
    { completed : Bool, description : String, id : Int }


type alias Model =
    { todos : SelectList ToDo
    , uid : Int
    , filter : Filter
    , form : { description : String }
    }


type Filter
    = All
    | Completed
    | Active


type Msg
    = NoOp


type Styles
    = None


(=>) : a -> b -> ( a, b )
(=>) =
    (,)



-- infixl 0 =>
