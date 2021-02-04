module Main exposing (..)
import Html exposing (..)
import Browser exposing (sandbox)
import Debug exposing (toString)
import Html.Attributes exposing (type_)
import Html.Events exposing (onClick)

--  Model

type alias Modal = Int

initModal : Modal
initModal = 0

-- update

type Msg = AddCalories | Reset

update : Msg -> Modal -> Modal

update msg modal =
    case msg of
        AddCalories ->
            modal +1
        Reset ->
            initModal

-- view

view : Modal -> Html Msg

view modal =
    div [] [
        h1 [] [text ("Total calories:" ++ (toString modal)) ]
    ,   button [ type_ "button", onClick AddCalories] [ text "Add Calories"]
    ,   button [ type_ "button", onClick Reset] [ text "Reset"]
    ]



main =
    sandbox
        { init = initModal
        , update = update
        , view = view
        }
