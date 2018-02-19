//
//  main.swift
//  Game library
//
//  Created by Brandon Covington on 2/13/18.
//  Copyright © 2018 Brandon Covington. All rights reserved.
//

import Foundation

var game = true
var ArrayofGames: [videogame] = []


func Addgame() {
    
    
    var Addgame = readLine()
    var Game = videogame(name: Addgame!)
    ArrayofGames.append(Game)
    
    
}
func remove() {
    for game in ArrayofGames {
        print(game.name)
    }
    var remove = readLine()
    for i in  0...ArrayofGames.count - 1 {
        if ArrayofGames[i].name == remove {
            ArrayofGames.remove(at: i)
        }
    }
}

func Checkout() {
    for game in ArrayofGames {
        if game.checkedOut == false{
            print(game.name)
            let currentDate = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd/yyyy HH:mm"
            

        }
    }
    var Checkout = readLine()
    for i in ArrayofGames {
        if i.name == Checkout {
          i.checkedOut = true
            print("\(i.name)has been checked out")
        }
    }
}


func Checkin() {
    for game in ArrayofGames {
        if game.checkedOut == false {
            print(game.name)
        }
    }
    var Checkin = readLine()
    for i in ArrayofGames {
        if i.name == Checkin {
            i.checkedOut = true
            print("\(i.name)has been checked in")
        }
    }
    
}




while game {
    
    
    
    func menu() {
        print("1) Add game")
        print("2) remove a game")
        print("3) check a game out")
        print("4) check a game in")
        print("5) Quit program")
        
        let option = Int(readLine()!)!
        
        if option == 1 {
            print("What game would you like to add")
            Addgame()
        } else if option == 2 {
            print("What game would you like to remove")
            remove()
        } else if option == 3 {
            print("What game would you like to check out")
            Checkout()
        }
        else if option == 4 {
            print("What game would you like to check in")
            Checkin()
        }
        else if option == 5 {
            print("You have exited the program")
            game = false
        }
        else {print("please enter a valid option")}
    }
    menu()
    
    
    
    //class VideoGame {
    //    let name: String
    //
    //
    //    init(name: String) {
    //        self.name = name
    //    }
    //
    //}
    //var videoGames = [VideoGame]()
    //var newGame1 = VideoGame(name: "fortnite")
    //var newGame2 = VideoGame(name: "DayZ")
    //videoGames.append(newGame1)
    //videoGames.append(newGame2)
    //for game in videoGames {
    //    print(game.name)
    //}
    
    
    
    
    
    
    
}


