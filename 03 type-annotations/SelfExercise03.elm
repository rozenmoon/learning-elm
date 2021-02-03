module Main exposing (..)
import Html

import Debug exposing (toString)

type alias Item = {
    name: String,
    qty: Int,
    freeQty: Int
    }

cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }

    ]

getFreeQty : Int -> Int -> Item -> Item
getFreeQty qtyLimit additionalQty item =
    if item.qty>= qtyLimit then
    {
        item | freeQty = additionalQty
    }
    else
    item

cartWithFreeQty : List Item
cartWithFreeQty = List.map ((getFreeQty 5 1 ) >> (getFreeQty 10 3 ) ) cart

main : Html.Html text3
main =
         cartWithFreeQty
        |> toString
        |> Html.text
