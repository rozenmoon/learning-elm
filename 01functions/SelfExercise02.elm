module Main exposing (..)
import Html

import Debug exposing (toString)

exercise2 inputString =
    let
        length = String.length inputString
    in
    if length > 11 then String.toUpper inputString |> \a -> a ++ "- name length:" ++ (toString length)
    else
    inputString ++ "- name length:" ++ (toString length)

result = exercise2 "Rozen Sharad Moon"

main =
    Html.text (toString result)
