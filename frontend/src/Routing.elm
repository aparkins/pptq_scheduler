module Routing exposing (..)

import Types exposing (Model, Msg, Route(..), initModel)
import Navigation exposing (Location)
import UrlParser exposing (Parser, oneOf, map, top, s, parseHash)


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
                ( topModel, Cmd.none )

            NotFoundRoute ->
                ( topModel, Cmd.none )

            CalendarRoute ->
                ( topModel, Cmd.none )


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map HomeRoute top
        , map CalendarRoute (s "calendar")
        ]


parseLocation : Location -> Route
parseLocation location =
    let
        parsed =
            parseHash matchers location
    in
        case parsed of
            Just route ->
                route

            Nothing ->
                NotFoundRoute
