module Types exposing (..)

import Navigation exposing (Location)


type Route
    = HomeRoute


type alias HomeModel =
    {}


type alias Model =
    { route : Route
    , homeModel : HomeModel
    }


initModel : Model
initModel =
    { route = HomeRoute
    , homeModel = {}
    }


type Msg
    = OnLocationChange Location
