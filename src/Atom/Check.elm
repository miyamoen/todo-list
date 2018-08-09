module Atom.Check exposing (..)

import Bibliopola exposing (..)
import Element exposing (..)
import Element.Attributes exposing (..)
import Element.Events exposing (onClick)
import Types exposing (..)


view : Bool -> Element Styles v Bool
view completed =
    el None
        [ padding 10
        , onClick completed
        , inlineStyle
            [ "color"
                => (if completed then
                        "rgb(83, 244, 61)"
                    else
                        "rgb(144, 144, 144)"
                   )
            , "font-size" => "30px"
            , "cursor" => "pointer"
            ]
        ]
    <|
        text "✔"


viewItem : ViewItem Styles v
viewItem =
    createViewItem "Check"
        view
        ( "Completed", [ "True" => True, "False" => False ] )


main : BibliopolaProgram Styles v
main =
    createProgramFromViewItem [] viewItem
