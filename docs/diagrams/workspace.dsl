workspace "MMS" "Matchmaking System" {

    model {
        u = person "User"
        admin = person "Admin"
        discordBot = softwareSystem "Discord Bot"
        mms = softwareSystem "Matchmaking System" {
            backend = container "Backend" {
                discordApiAdapter = component "Discord API Adapter"
                player = component "Player"
                ranking = component "Ranking"
                roomCreator = component "Room Creator"
                matchMaker = component "Matchmaker"
                queue = component "Queue"
                match = component "Match"
            }
            db = container "Database" {
                tags "Database"
            }
        }

        u -> discordBot "Interacts with"

        admin -> discordBot "Manages"

        discordBot -> discordApiAdapter "Sends requests to"

        discordApiAdapter -> ranking "Add player"
        discordApiAdapter -> ranking "Remove player"
        discordApiAdapter -> ranking "Show player statistics"
        discordApiAdapter -> ranking "Show top players"
        discordApiAdapter -> roomCreator "Create room"
        discordApiAdapter -> queue "Join queue"
        discordApiAdapter -> queue "Leave queue"
        discordApiAdapter -> match "Submit match result"
        discordApiAdapter -> match "Confirm match result"
        discordApiAdapter -> match "Manually cancel match"

        queue -> matchMaker "Player joined queue event" {
            tags "Event"
        }
        queue -> matchMaker "Player left queue event" {
            tags "Event"
        }

        matchMaker -> queue "Update queue"
        matchMaker -> match "Create match"
        matchMaker -> match "Update match"
        matchMaker -> ranking "Get players ranking"

        match -> roomCreator "Create room"
        match -> ranking "Update players ranking"

        ranking -> player "Create player"
        ranking -> player "Delete player"
        ranking -> player "Get player info"


    }

    views {
        systemLandscape "MMS_Landscape" {
            include *
            autoLayout lr
        }

        component backend backend_components {
            include *
            autoLayout lr
        }

        styles {
            element "Element" {
                color #ffffff
            }
            element "Person" {
                background #05527d
                stroke #05527d
                shape person
            }
            element "Container" {
                background #0773af
            }
            element "Component" {
                background #2390b9
            }
            element "Database" {
                background #0773af
                shape cylinder
            }
            element "Software System" {
                background #0773af
            }
            element "Boundary" {
                strokeWidth 5
            }
            relationship "Relationship" {
                thickness 4
            }
            relationship "Event" {
                dashed false
            }
        }
    }

    configuration {
        scope softwaresystem
    }

}