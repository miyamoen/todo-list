module Main exposing (..)

import Bibliopola exposing (..)
import Element exposing (..)
import Element.Attributes exposing (..)
import Html exposing (Html, program)
import SelectList exposing (SelectList)
import Style exposing (..)
import Types exposing (..)


firstToDo : ToDo
firstToDo =
    { completed = False, description = "List ToDos", id = 0 }


init : ( Model, Cmd Msg )
init =
    { todos = SelectList.fromLists [] firstToDo []
    , uid = 0
    , filter = All
    , form = { description = "" }
    }
        => Cmd.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model => Cmd.none


view : Model -> Html Msg
view model =
    viewport (styleSheet []) <|
        column None
            []
            [ text "ToDo" ]


main : Program Never Model Msg
main =
    program
        { init = init
        , update = update
        , view = view
        , subscriptions = always Sub.none
        }
