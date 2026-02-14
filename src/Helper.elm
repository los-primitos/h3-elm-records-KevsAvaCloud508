module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)



-- 1


add2 : number -> number -> number
add2 x y =
    x + y


add3 : number -> number -> number -> number
add3 x y z =
    x + y + z



-- 2


calc : a -> a -> (a -> a -> b) -> b
calc x y operator =
    operator x y



-- 3


type alias Language =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languageNames : List Language -> List String
languageNames languages =
    List.map .name languages



-- 4


type alias User =
    { name : String
    , uType : String
    }


onlyStudents : List User -> List String
onlyStudents users =
    List.map
        (\u ->
            if u.uType == "Student" then
                u.name

            else
                ""
        )
        users



-- 5


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres games =
    List.map .genres games



-- 6


type alias Laptop =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Laptop
myLaptop =
    { ram = "16GB"
    , model = "XPS 13"
    , brand = "Dell"
    , screenSize = "13.4"
    }


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
