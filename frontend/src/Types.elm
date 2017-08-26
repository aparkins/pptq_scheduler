module Types exposing (..)

import Navigation exposing (Location)
import Calendar.Types


type Route
    = HomeRoute
    | NotFoundRoute
    | CalendarRoute


type alias HomeModel =
    {}


type alias Model =
    { route : Route
    , homeModel : HomeModel
    , calendarModel : Calendar.Types.Model
    }


initModel : Model
initModel =
    { route = HomeRoute
    , homeModel = {}
    , calendarModel = Calendar.Types.initModel
    }


type Msg
    = OnLocationChange Location
    | CalendarPageMsg Calendar.Types.Msg
