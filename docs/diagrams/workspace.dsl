workspace "MMS" "Matchmaking System" {

    !identifiers hierarchical

    model {
        u = person "User"
        discordBot = softwareSystem "Discord Bot"
        mms = softwareSystem "Matchmaking System" {
            db = container "Database" {
                tags "Database"
            }
        }

        u -> discordBot "Interacts with"
        discordBot -> mms.db "Sends requests to"
    }

    views {
        systemLandscape "SystemLandscape" {
            include *
        }

        systemContext mms "MatchmakingSystemContext" {
            include *
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
        }
    }

    configuration {
        scope softwaresystem
    }

}