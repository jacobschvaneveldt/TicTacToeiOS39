//
//  GameController.swift
//  TicTacToe
//
//  Created by Jacob Schvaneveldt on 5/19/21.
//

import UIKit

class GameController {
    
    //MARK: - Properties
    static let shared = GameController()
    
    var isTurnToMoveForX: Bool = true
    var isfirstRow: Bool = false
    var isSecondRow: Bool = false
    var isThirdRow: Bool = false
    
    var firstRow: [String] = ["", "", ""]
    var secondRow: [String] = ["", "", ""]
    var thirdRow: [String] = ["", "", ""]
    
    //MARK: - Functions
    
    func checkForWinConditions(piece: String) {
        switch piece {
        
        case "x":
            if firstRow[1] == piece, firstRow[2] == piece, firstRow[3] == piece {
                presentWinAlertController(piece: piece)
            }
            if secondRow[1] == piece, secondRow[2] == piece, secondRow[3] == piece {
                presentWinAlertController(piece: piece)
            }
            if thirdRow[1] == piece, thirdRow[2] == piece, thirdRow[3] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[1] == piece, secondRow[1] == piece, thirdRow[1] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[2] == piece, secondRow[2] == piece, thirdRow[2] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[3] == piece, secondRow[3] == piece, thirdRow[3] == piece {
                presentWinAlertController(piece: piece)
            }
            
            if firstRow[1] == piece, secondRow[2] == piece, thirdRow[3] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[3] == piece, secondRow[2] == piece, thirdRow[1] == piece {
                presentWinAlertController(piece: piece)
            }
        case "o":
            if firstRow[1] == piece, firstRow[2] == piece, firstRow[3] == piece {
                presentWinAlertController(piece: piece)
            }
            if secondRow[1] == piece, secondRow[2] == piece, secondRow[3] == piece {
                presentWinAlertController(piece: piece)
            }
            if thirdRow[1] == piece, thirdRow[2] == piece, thirdRow[3] == piece {
                presentWinAlertController(piece: piece)
            }
            
            if firstRow[1] == piece, secondRow[1] == piece, thirdRow[1] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[2] == piece, secondRow[2] == piece, thirdRow[2] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[3] == piece, secondRow[3] == piece, thirdRow[3] == piece {
                presentWinAlertController(piece: piece)
            }
            
            if firstRow[1] == piece, secondRow[2] == piece, thirdRow[3] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[3] == piece, secondRow[2] == piece, thirdRow[1] == piece {
                presentWinAlertController(piece: piece)
            }
        default:
            fatalError()
        }
    }
    
    func addPieceToArray(piece: String, index: Int) {
        if isfirstRow {
            firstRow.insert(piece, at: index)
            firstRow.remove(at: index + 1)
            isfirstRow.toggle()
        }
        if isSecondRow {
            secondRow.insert(piece, at: index)
            firstRow.remove(at: index + 1)
            isfirstRow.toggle()
        }
        if isThirdRow {
            thirdRow.insert(piece, at: index)
            firstRow.remove(at: index + 1)
            isfirstRow.toggle()
        }
    }
    
    func presentWinAlertController(piece: String) {
        let isPieceX: Bool = piece == "x"
        let alertController = UIAlertController(title: isPieceX ? "Congrats! X Won the Game!" : "Congrats! O Won the Game!", message: nil, preferredStyle: .alert)
        
        let playAgainAction = UIAlertAction(title: "Play Again", style: .default) { _ in
            self.firstRow = ["", "", ""]
            self.secondRow = ["", "", ""]
            self.thirdRow = ["", "", ""]
        }
        let quitAction = UIAlertAction(title: "Quit", style: .cancel) { _ in
            self.firstRow = ["", "", ""]
            self.secondRow = ["", "", ""]
            self.thirdRow = ["", "", ""]
            //pop root view controller
        }
        alertController.addAction(playAgainAction)
        alertController.addAction(quitAction)
       //present alert controller
        
    }
    
    
}//End of Class
