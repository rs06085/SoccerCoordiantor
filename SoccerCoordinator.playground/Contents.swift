import UIKit

//step 1
//create a single collection for all 18 players
let soccerPlayers = [
    ["Name": "Joe Smith",       "Height": "42", "Experience": "true", "Guardian": "Jim and Jan Smith"],
    ["Name": "Jill Taner",      "Height": "36", "Experience": "true", "Guardian": "Clara Tanner"],
    ["Name": "Bill Bon",        "Height": "43", "Experience": "true", "Guardian": "Sara and Jenny Bon"],
    ["Name": "Eva Gordon",      "Height": "45", "Experience": "false", "Guardian": "Wendy and Mike Gordon"],
    ["Name": "Matt Gill",       "Height": "40", "Experience": "false", "Guardian": "Charles and Sylvia"],
    ["Name": "Kimmy Stein",     "Height": "41", "Experience": "false", "Guardian": "Bill and Hillary"],
    ["Name": "Sammy Adams",     "Height": "45", "Experience": "false", "Guardian": "Jeff Adams"],
    ["Name": "Karl Saygan",     "Height": "42", "Experience": "true", "Guardian": "Heather Bledsoe"],
    ["Name": "Suzane Greenberg", "Height": "44", "Experience": "true", "Guardian": "Henrietta Dumas"],
    ["Name": "Sal Dali",        "Height": "41", "Experience": "false", "Guardian": "Gala Dali"],
    ["Name": "Joe Kavalier",    "Height": "39", "Experience": "false", "Guardian": "Sam and Elaine"],
    ["Name": "Ben Finkelstein", "Height": "44", "Experience": "false", "Guardian": "Aaron and Jill"],
    ["Name": "Diego Soto",      "Height": "41", "Experience": "true", "Guardian": "Robin and Sarika"],
    ["Name": "Chloe Alaska",    "Height": "47", "Experience": "false", "Guardian": "David and Jamie"],
    ["Name": "Arnold Willis",   "Height": "43", "Experience": "false", "Guardian": "Claire Willis"],
    ["Name": "Phillip Helm",    "Height": "44", "Experience": "true", "Guardian": "Thomas Helm"],
    ["Name": "Les Clay",        "Height": "42", "Experience": "true", "Guardian": "Wyonna Brown"],
    ["Name": "Herschell Krustofski", "Height": "45", "Experience": "true", "Guardian": "Hyman and Rachel"]
]


var teamSharks: [[String:String]] = []
var teamDragons: [[String:String]] = []
var teamRaptors: [[String:String]] = []

var teams = [teamSharks, teamDragons, teamRaptors]

let playersPerTeam = soccerPlayers.count / teams.count

//store players
var experienced: Int = 1
var inexperienced: Int = 1

for player in soccerPlayers {
    if player["Experience"] == "true" {
        switch (experienced % playersPerTeam) {
            case 0: teamSharks.append(player)
            case 1: teamDragons.append(player)
            case 2: teamRaptors.append(player)
            case 3: teamSharks.append(player)
            case 4: teamDragons.append(player)
            case 5: teamRaptors.append(player)
            default: break
        }
        experienced += 1
    }
    
    if player["Experience"] == "false" {
        switch (inexperienced % playersPerTeam) {
        case 0: teamSharks.append(player)
        case 1: teamDragons.append(player)
        case 2: teamRaptors.append(player)
        case 3: teamSharks.append(player)
        case 4: teamDragons.append(player)
        case 5: teamRaptors.append(player)
        default: break
        }
        inexperienced += 1
    }
}

//personalized letters
for player in teamSharks {
    print("Dear \(player["Guardian"]!), \(player["Name"]!) will be playing for the Sharks. Date: March 17, 3pm")
}

for player in teamDragons {
    print("Dear \(player["Guardian"]!), \(player["Name"]!) will be playing for the Dragons. Date: March 17, 1pm")
}

for player in teamRaptors{
    print("Dear \(player["Guardian"]!), \(player["Name"]!) will be playing for the Raptors. Date: March 17, 3pm")
}










