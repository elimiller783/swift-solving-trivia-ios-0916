//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    //
    //    func matchName(state: String, capital: String) -> Bool {
    //        for letter in state.characters{
    //            for letters in capital.characters {
    //                if letter == letters {
    //                    return false
    //                }
    //            }
    //        }
    //        return true
    //    }
    //
    //
    //
    //
    //    func solveTrivia(states: [String : String]) -> String {
    //        var answer = ""
    //        for (state, capital) in states {
    //            if matchName(state.lowercaseString, capital: capital.lowercaseString) {
    //                answer = state
    //            }
    //        }
    //        return answer
    //    }
    //}
    
//    var states = [
//    
//    "Alabama":"Montgomery",
//    "Alaska":"Juneau",
//    "Arizona":"Phoenix",
//    "Arkansas":"Little Rock",
//    "California":"Sacramento",
//    "Colorado":"Denver",
//    "Connecticut":"Hartford",
//    "Delaware":"Dover",
//    "Florida":"Tallahassee",
//    "Georgia":"Atlanta",
//    "Hawaii":"Honolulu",
//    "Idaho":"Boise",
//    "Illinois":"Springfield",
//    "Indiana":"Indianapolis",
//    "Iowa":"Des Moines",
//    "Kansas":"Topeka",
//    "Kentucky":"Frankfort",
//    "Lousiana":"Baton Rouge",
//    "Maine":"Augusta",
//    "Maryland":"Annapolis",
//    "Massassachusetts":"Boston",
//    "Michigan":"Lansing",
//    "Minnesota":"Saint Paul",
//    "Mississippi":"Jackson",
//    "Missouri":"Jefferson City",
//    "Montana":"Helena",
//    "Nebraska":"Lincoln",
//    "Nevada":"Carson City",
//    "New Hampshire":"Concord",
//    "New Jersey":"Trenton",
//    "New Mexico":"Santa Fe",
//    "New York":"Albany",
//    "North Carolina":"Raleigh",
//    "North Dakota":"Bismarck",
//    "Ohio":"Columbus",
//    "Oklahoma":"Oklahoma City",
//    "Oregon":"Salem",
//    "Pennsylvania":"Harrisburg",
//    "Rhode Island":"Providence",
//    "South Carolina":"Columbia",
//    "South Dakota":"Pierre",
//    "Tennessee":"Nashville",
//    "Texas":"Austin",
//    "Utah":"Salt Lake City",
//    "Vermont":"Montpelier",
//    "Virgina":"Richmond",
//    "Washington":"Olympia",
//    "West Virginia":"Charleston",
//    "Wisconsin":"Madison",
//    "Wyoming":"Cheyenne"]
//    
    
    func solveTrivia(var dict: [String : String]) -> String {
        var answer = ""
        for (state, capital) in dict {
            let stateChar = Array(state.lowercaseString.characters)
            let capitalChar = Array(capital.lowercaseString.characters)
            
            for letter in stateChar {
                if capitalChar.contains(letter) {
                    dict.removeValueForKey(state)
                }
            }
            
        }
        for (state, _) in dict {
            answer = state
            
        }
    return answer
    
    
}
}


