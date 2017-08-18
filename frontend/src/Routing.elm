module Routing exposing (..)

import Types exposing (Model, Msg, Route(..), initModel)
import Navigation exposing (Location)


init : Location -> ( Model, Cmd Msg )
init location =
    let
        route =
            parseLocation location

        topModel =
            { initModel | route = route }
    in
        case route of
            HomeRoute ->
                ( initModel, Cmd.none )


parseLocation : Location -> Route
parseLocation location =
    HomeRoute
