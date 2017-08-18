module Main exposing (..)

import Routing exposing (init)
import Subscriptions exposing (subscriptions)
import Types exposing (Model, Msg(..))
import Updates exposing (update)
import Views exposing (view)
import Navigation exposing (Location)


main : Program Never Model Msg
main =
    Navigation.program
        OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
