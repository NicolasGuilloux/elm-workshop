module Main exposing (..)

import Browser exposing (Document)
import Html exposing (Html, div, text)


-- Describes how the program should be initialized
main : Platform.Program Flags Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }


-- Defines the input data (Flags), the container where we store our variables (Model), and the various
-- messages trigerred by the view or actions to let use edit our current state of the Model

type alias Flags =
    {}

type alias Model =
    {}

type Msg
    = MsgNoOp


-- Describes how the application should be initialized
init : Flags -> (Model, Cmd Msg)
init _ =
    ( {}, Cmd.none )

-- Describes the various actions to do when a message is triggered
update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        MsgNoOp ->
            ( model, Cmd.none )

-- Describes how the view should be rendered
view : Model -> Document Msg
view model =
    { title = "Elm Dashboard" 
    , body = 
        [ div []
            [ text "It's alive!"
            ]
        ]
    }