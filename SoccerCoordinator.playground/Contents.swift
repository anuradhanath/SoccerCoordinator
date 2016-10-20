/*: Soccer League Coordinator
 This programe divides the number of players to Three teams w.r.t their Experience
 */
import UIKit

//Array of Dictionary representing Soccer Player Information
var playerInformtion : [[String:Any]] = [
    [
        "Name":"Joe Smith",
        "Height":42,
        "Experience":"Yes",
        "Guardian":"Jim and Jan Smith"
    ],
    [
        "Name":"Jill Tanner",
        "Height":36,
        "Experience":"Yes",
        "Guardian":"Clara Tanne"
    ],
    [
        "Name":"Bill Bon",
        "Height":43,
        "Experience":"Yes",
        "Guardian":"Sara and Jenny Bon"
    ],
    [
        "Name":"Eva Gordon",
        "Height":45,
        "Experience":"No",
        "Guardian":"Wendy and Mike Gordon"
    ],
    [
        "Name":"Matt Gill",
        "Height":40,
        "Experience":"No",
        "Guardian":"Charles and Sylvia Gill"
    ],
    [
        "Name":"Kimmy Stein",
        "Height":41,
        "Experience":"No",
        "Guardian":"Bill and Hillary Stein"
    ],
    [
        "Name":"Sammy Adams",
        "Height":45,
        "Experience":"No",
        "Guardian":"Jeff Adams"
    ],
    [
        "Name":"Karl Saygan",
        "Height":42,
        "Experience":"Yes",
        "Guardian":"Heather Bledsoe"
    ],
    [
        "Name":"Suzane Greenberg",
        "Height":44,
        "Experience":"Yes",
        "Guardian":"Henrietta Dumas"
    ],
    [
        "Name":"Sal Dali",
        "Height":41,
        "Experience":"No",
        "Guardian":"Gala Dali"
    ],
    [
        "Name":"Joe Kavalier",
        "Height":39,
        "Experience":"No",
        "Guardian":"Sam and Elaine Kavalier"
    ],    [
        "Name":"Ben Finkelstein",
        "Height":44,
        "Experience":"No",
        "Guardian":"Aaron and Jill Finkelstein"
    ],
          [
            "Name":"Diego Soto",
            "Height":41,
            "Experience":"Yes",
            "Guardian":"Robin and Sarika Soto"
    ],
          [
            "Name":"Chloe Alaska",
            "Height":47,
            "Experience":"No",
            "Guardian":"David and Jamie Alaska"
    ],
          [
            "Name":"Arnold Willis",
            "Height":43,
            "Experience":"No",
            "Guardian":"Claire Willis"
    ],
          [
            "Name":"Phillip Helm",
            "Height":44,
            "Experience":"Yes",
            "Guardian":"Thomas Helm and Eva Jones"
    ],
          [
            "Name":"Les Clay",
            "Height":42,
            "Experience":"Yes",
            "Guardian":"Wynonna Brown"
    ],
          [
            "Name":"Herschel Krustofski",
            "Height":45,
            "Experience":"Yes",
            "Guardian":"Hyman and Rachel Krustofski"
    ]
]

//printing array of dictionary
print("\nPlayers Selected for Soccer League:\n")
for i in playerInformtion{
    print(i)
}
//let noOfTeams = 3
let noOfPlayers = playerInformtion.count

//let noOfPlayersInEachTeam = noOfPlayers / noOfTeams

/*
 Sort Array of Dictionary palyerInformation with respect to experience of players.
 1st the array should have all the Player inormation of experienced player followed by
 non experience player.
 Using: Selection Sort
 */

for x in 0..<noOfPlayers - 1{
    
    for y in x+1..<noOfPlayers{
        //typecasting value of type "Any" to "String"
        var xExperience = playerInformtion[x]["Experience"] as? String
        var yExperience = playerInformtion[y]["Experience"] as? String
        
        if xExperience == "No" && yExperience == "Yes"{
            //used swap swift function
            swap(&playerInformtion[x],&playerInformtion[y])
            
        }
        
    }
}
//printing sorted array of dictionary
print("\nPlayers Selected for Soccer League (Sorted w.r.t Experience):\n")
for i in playerInformtion{
    print(i)
}

/*
 Now distribute players in three teams
 */

/*Declaring Empty Array of Dictionary for each team*/
var teamDragons = [[String:Any]]()
var teamSharks = [[String:Any]]()
var teamRaptors = [[String:Any]]()
var index = 0
while index < noOfPlayers {
    
    teamDragons.append(playerInformtion[index])
    index += 1
    teamSharks.append(playerInformtion[index])
    index += 1
    teamRaptors.append(playerInformtion[index])
    index += 1
}


/*Sending letters to Parents*/
print("\nTeam Dragon:")
for i in 0..<teamDragons.count{
    print ("Dear \(teamDragons[i]["Guardian"]) your child \(teamDragons[i]["Name"]) is selected in team Dragons and their 1st practice match is on March 17, 1pm. Please attend the match to encourage your child. \n Thanks, \n Coach")
}
print("\nTeam Sharks:")
for i in 0..<teamSharks.count{
    print ("Dear \(teamSharks[i]["Guardian"]) your child \(teamSharks[i]["Name"]) is selected in team Sharks and their 1st practice match is on March 17, 3pm. Please attend the match to encourage your child. \n Thanks, \n Coach")
}
print("\nTeam Raptors:")
for i in 0..<teamRaptors.count{
    print ("Dear \(teamRaptors[i]["Guardian"]) your child \(teamRaptors[i]["Name"]) is selected in team Raptors and their 1st practice match is on March 18, 1pm. Please attend the match to encourage your child. \n Thanks, \n Coach")
}
