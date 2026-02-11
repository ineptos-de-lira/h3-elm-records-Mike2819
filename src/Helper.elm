module Helper exposing (..)

lan : List { name : String, releaseYear : Int, currentVersion : String }
lan =
    [ { name = "elm", 
        releaseYear = 2012, 
        currentVersion = "0.19.1"
      }, 
        { name = "JavaScript", 
        releaseYear = 1995, 
        currentVersion = "ECMAScript 2025"
      }
    ]

languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list =
    List.map .name list


user : List {name : String, uType : String}
user = 
    [{
        name = "Roberto",
        uType = "Student"
    },
    {
        name = "Mitsiu",
        uType = "Professor"
    }]

onlyStudents : List {name : String, uType : String} -> List String
onlyStudents list =
    List.map (\ u -> if u.uType == "Student" then u.name else "") list


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }

games : List Videogame
games =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 2000000
      , genres = ["Action", "Shooter", "Supernatural"]
      }
    , { title = "Ocarina of Time"
      , releaseYear = 1998
      , available = False
      , downloads = 5000000
      , genres = ["Action", "Adventure", "Puzzle"]
      }
    ]

getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list