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
    
    func matchName(state: String, capital: String) -> Bool {
        for letter in state.characters{
            for letters in capital.characters {
                if letter == letters {
                    return false
                }
            }
        }
        return true
    }
    
    
    
    
    func solveTrivia(states: [String : String]) -> String {
        var answer = ""
        for (state, capital) in states {
            if matchName(state.lowercaseString, capital: capital.lowercaseString) {
                answer = state
            }
        }
        return answer
    }
}








