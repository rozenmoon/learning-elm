module Main exposing (..)
import Html

import Debug exposing (toString)

firstChar inputstring =
    String.left 1 inputstring

-- %= inputString1 inputString2 =
--  firstChar inputString1 |> (==) (firstChar inputString2)

wordCount =
    String.words >> List.length


main =
    "Here is a test sentence"
        |> wordCount
        |> toString
        |> Html.text
