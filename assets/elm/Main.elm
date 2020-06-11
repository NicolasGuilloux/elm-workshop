module Main exposing (main)

import Browser exposing (Document)
import Html exposing (Attribute, Html, div, h1, text)
import Html.Attributes exposing (class, style)



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
    { firstname : String
    }


type alias Model =
    { firstname : String
    }


type Msg
    = MsgNoOp



-- Describes how the application should be initialized


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( { firstname = flags.firstname
      }
    , Cmd.none
    )



-- Describes the various actions to do when a message is triggered


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        MsgNoOp ->
            ( model, Cmd.none )



-- Describes how the view should be rendered


view : Model -> Document Msg
view model =
    { title = "Elm Dashboard"
    , body =
        [ div [ class "wrapper", backgroundImageStyle ]
            [ topLeftWidget model
            , topRightWidget model
            , centerWidget model
            , bottomLeftWidget model
            , bottomRightWidget model
            ]
        ]
    }


backgroundImageStyle : Attribute Msg
backgroundImageStyle =
    let
        bgUrl =
            \filename -> "url('images/backgrounds/" ++ filename ++ "')"
    in
    style "background-image" (bgUrl "background_1.jpg")



-- Center widget


centerWidget : Model -> Html Msg
centerWidget model =
    div [ class "center-widget" ]
        [ h1 []
            [ text ("Hello " ++ model.firstname)
            ]
        ]



-- Top Left width


topLeftWidget : Model -> Html Msg
topLeftWidget _ =
    div [ class "top-left-widget" ]
        []



-- Top Right width


topRightWidget : Model -> Html Msg
topRightWidget _ =
    div [ class "top-right-widget" ]
        []



-- Bottom Left width


bottomLeftWidget : Model -> Html Msg
bottomLeftWidget _ =
    div [ class "bottom-left-widget" ]
        []



-- Bottom Right width


bottomRightWidget : Model -> Html Msg
bottomRightWidget _ =
    div [ class "bottom-right-widget" ]
        []
