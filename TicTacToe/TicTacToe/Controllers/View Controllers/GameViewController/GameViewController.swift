//
//  GameViewController.swift
//  TicTacToe
//
//  Created by Jacob Schvaneveldt on 5/19/21.
//

import UIKit

class GameViewController: UIViewController {
    
    //MARK: - OUTLETS
    @IBOutlet weak var yourTurnTextLabel: UILabel!
    @IBOutlet weak var B1Button: UIButton!
    @IBOutlet weak var B2Button: UIButton!
    @IBOutlet weak var B3Button: UIButton!
    @IBOutlet weak var B4Button: UIButton!
    @IBOutlet weak var B5Button: UIButton!
    @IBOutlet weak var B6Button: UIButton!
    @IBOutlet weak var B7Button: UIButton!
    @IBOutlet weak var B8Button: UIButton!
    @IBOutlet weak var B9Button: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    
    //MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        var buttons: [UIButton] = [B1Button, B2Button, B3Button, B4Button, B5Button, B6Button, B7Button, B8Button, B9Button]
    }
    
    //MARK: - PROPERTIES
    static let shared = GameViewController()
    
    var isTurnToMoveForX: Bool = true
    var isfirstRow: Bool = false
    var isSecondRow: Bool = false
    var isThirdRow: Bool = false
    
    var firstRow: [String] = ["", "", ""]
    var secondRow: [String] = ["", "", ""]
    var thirdRow: [String] = ["", "", ""]
    
    //MARK: - ACTIONS
    @IBAction func B1ButtonTapped(_ sender: Any) {
        guard B1Button.currentImage == nil else {return}
        isfirstRow.toggle()
        if isTurnToMoveForX {
            B1Button.setImage(#imageLiteral(resourceName: "TTTX"), for: .normal)
            B1Button.tintColor = UIColor(named: "Color")
            addPieceToArray(piece: "x", index: 0)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "x")
        } else {
            B1Button.setImage(#imageLiteral(resourceName: "TTTO"), for: .normal)
            B1Button.tintColor = UIColor(named: "Color-2")
            addPieceToArray(piece: "o", index: 0)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "o")
        }
    }
    @IBAction func B2ButtonTapped(_ sender: Any) {
        guard B2Button.currentImage == nil else {return}
        isfirstRow.toggle()
        if isTurnToMoveForX {
            B2Button.setImage(#imageLiteral(resourceName: "TTTX"), for: .normal)
            B2Button.tintColor = UIColor(named: "Color")
            addPieceToArray(piece: "x", index: 1)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "x")
        } else {
            B2Button.setImage(#imageLiteral(resourceName: "TTTO"), for: .normal)
            B2Button.tintColor = UIColor(named: "Color-2")
            addPieceToArray(piece: "o", index: 1)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "o")
        }
    }
    @IBAction func B3ButtonTapped(_ sender: Any) {
        guard B3Button.currentImage == nil else {return}
        isfirstRow.toggle()
        if isTurnToMoveForX {
            B3Button.setImage(#imageLiteral(resourceName: "TTTX"), for: .normal)
            B3Button.tintColor = UIColor(named: "Color")
            addPieceToArray(piece: "x", index: 2)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "x")
        } else {
            B3Button.setImage(#imageLiteral(resourceName: "TTTO"), for: .normal)
            B3Button.tintColor = UIColor(named: "Color-2")
            addPieceToArray(piece: "o", index: 2)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "o")
        }
    }
    @IBAction func B4ButtonTapped(_ sender: Any) {
        guard B4Button.currentImage == nil else {return}
        isSecondRow.toggle()
        if isTurnToMoveForX {
            B4Button.setImage(#imageLiteral(resourceName: "TTTX"), for: .normal)
            B4Button.tintColor = UIColor(named: "Color")
            addPieceToArray(piece: "x", index: 0)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "x")
        } else {
            B4Button.setImage(#imageLiteral(resourceName: "TTTO"), for: .normal)
            B4Button.tintColor = UIColor(named: "Color-2")
            addPieceToArray(piece: "o", index: 0)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "o")
        }
    }
    @IBAction func B5ButtonTapped(_ sender: Any) {
        guard B5Button.currentImage == nil else {return}
        isSecondRow.toggle()
        if isTurnToMoveForX {
            B5Button.setImage(#imageLiteral(resourceName: "TTTX"), for: .normal)
            B5Button.tintColor = UIColor(named: "Color")
            addPieceToArray(piece: "x", index: 1)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "x")
        } else {
            B5Button.setImage(#imageLiteral(resourceName: "TTTO"), for: .normal)
            B5Button.tintColor = UIColor(named: "Color-2")
            addPieceToArray(piece: "o", index: 1)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "o")
        }
    }
    @IBAction func B6ButtonTapped(_ sender: Any) {
        guard B6Button.currentImage == nil else {return}
        isSecondRow.toggle()
        if isTurnToMoveForX {
            B6Button.setImage(#imageLiteral(resourceName: "TTTX"), for: .normal)
            B6Button.tintColor = UIColor(named: "Color")
            addPieceToArray(piece: "x", index: 2)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "x")
        } else {
            B6Button.setImage(#imageLiteral(resourceName: "TTTO"), for: .normal)
            B6Button.tintColor = UIColor(named: "Color-2")
            addPieceToArray(piece: "o", index: 2)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "o")
        }
    }
    @IBAction func B7ButtonTapped(_ sender: Any) {
        guard B7Button.currentImage == nil else {return}
        isThirdRow.toggle()
        if isTurnToMoveForX {
            B7Button.setImage(#imageLiteral(resourceName: "TTTX"), for: .normal)
            B7Button.tintColor = UIColor(named: "Color")
            addPieceToArray(piece: "x", index: 0)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "x")
        } else {
            B7Button.setImage(#imageLiteral(resourceName: "TTTO"), for: .normal)
            B7Button.tintColor = UIColor(named: "Color-2")
            addPieceToArray(piece: "o", index: 0)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "o")
        }
    }
    @IBAction func B8ButtonTapped(_ sender: Any) {
        guard B8Button.currentImage == nil else {return}
        isThirdRow.toggle()
        if isTurnToMoveForX {
            B8Button.setImage(#imageLiteral(resourceName: "TTTX"), for: .normal)
            B8Button.tintColor = UIColor(named: "Color")
            addPieceToArray(piece: "x", index: 1)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "x")
        } else {
            B8Button.setImage(#imageLiteral(resourceName: "TTTO"), for: .normal)
            B8Button.tintColor = UIColor(named: "Color-2")
            addPieceToArray(piece: "o", index: 1)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "o")
        }
    }
    @IBAction func B9ButtonTapped(_ sender: Any) {
        guard B9Button.currentImage == nil else {return}
        isThirdRow.toggle()
        if isTurnToMoveForX {
            B9Button.setImage(#imageLiteral(resourceName: "TTTX"), for: .normal)
            B9Button.tintColor = UIColor(named: "Color")
            addPieceToArray(piece: "x", index: 2)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "x")
        } else {
            B9Button.setImage(#imageLiteral(resourceName: "TTTO"), for: .normal)
            B9Button.tintColor = UIColor(named: "Color-2")
            addPieceToArray(piece: "o", index: 2)
            isTurnToMoveForX.toggle()
            checkForWinConditions(piece: "o")
        }
    }
    @IBAction func resetButtonTapped(_ sender: Any) {
        self.firstRow = ["", "", ""]
        self.secondRow = ["", "", ""]
        self.thirdRow = ["", "", ""]
        
        self.B1Button.setImage(nil, for: .normal)
        self.B2Button.setImage(nil, for: .normal)
        self.B3Button.setImage(nil, for: .normal)
        self.B4Button.setImage(nil, for: .normal)
        self.B5Button.setImage(nil, for: .normal)
        self.B6Button.setImage(nil, for: .normal)
        self.B7Button.setImage(nil, for: .normal)
        self.B8Button.setImage(nil, for: .normal)
        self.B9Button.setImage(nil, for: .normal)
        
        self.isTurnToMoveForX = true
    }
    @IBAction func exitButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    //MARK: - Functions
    
    func checkForWinConditions(piece: String) {
        
        if B1Button.currentImage != nil, B2Button.currentImage != nil, B3Button.currentImage != nil, B4Button.currentImage != nil, B5Button.currentImage != nil, B6Button.currentImage != nil, B7Button.currentImage != nil, B8Button.currentImage != nil, B9Button.currentImage != nil {
            presentStalemateAlertController()
        }
        
        switch piece {
        
        case "x":
            if firstRow[0] == piece, firstRow[1] == piece, firstRow[2] == piece {
            presentWinAlertController(piece: piece)
            }
            if secondRow[0] == piece, secondRow[1] == piece, secondRow[2] == piece {
                presentWinAlertController(piece: piece)
            }
            if thirdRow[0] == piece, thirdRow[1] == piece, thirdRow[2] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[0] == piece, secondRow[0] == piece, thirdRow[0] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[1] == piece, secondRow[1] == piece, thirdRow[1] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[2] == piece, secondRow[2] == piece, thirdRow[2] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[0] == piece, secondRow[1] == piece, thirdRow[2] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[2] == piece, secondRow[1] == piece, thirdRow[0] == piece {
                presentWinAlertController(piece: piece)
            }
        case "o":
            if firstRow[0] == piece, firstRow[1] == piece, firstRow[2] == piece {
                presentWinAlertController(piece: piece)
            }
            if secondRow[0] == piece, secondRow[1] == piece, secondRow[2] == piece {
                presentWinAlertController(piece: piece)
            }
            if thirdRow[0] == piece, thirdRow[1] == piece, thirdRow[2] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[0] == piece, secondRow[0] == piece, thirdRow[0] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[1] == piece, secondRow[1] == piece, thirdRow[1] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[2] == piece, secondRow[2] == piece, thirdRow[2] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[0] == piece, secondRow[1] == piece, thirdRow[2] == piece {
                presentWinAlertController(piece: piece)
            }
            if firstRow[2] == piece, secondRow[1] == piece, thirdRow[0] == piece {
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
            secondRow.remove(at: index + 1)
            isSecondRow.toggle()
        }
        if isThirdRow {
            thirdRow.insert(piece, at: index)
            thirdRow.remove(at: index + 1)
            isThirdRow.toggle()
        }
    }
    
    func presentWinAlertController(piece: String) {
        let isPieceX: Bool = piece == "x"
        let alertController = UIAlertController(title: isPieceX ? "Congrats! X Won the Game!" : "Congrats! O Won the Game!", message: nil, preferredStyle: .alert)
        
        let playAgainAction = UIAlertAction(title: "Play Again", style: .default) { _ in
            self.firstRow = ["", "", ""]
            self.secondRow = ["", "", ""]
            self.thirdRow = ["", "", ""]
            
            self.B1Button.setImage(nil, for: .normal)
            self.B2Button.setImage(nil, for: .normal)
            self.B3Button.setImage(nil, for: .normal)
            self.B4Button.setImage(nil, for: .normal)
            self.B5Button.setImage(nil, for: .normal)
            self.B6Button.setImage(nil, for: .normal)
            self.B7Button.setImage(nil, for: .normal)
            self.B8Button.setImage(nil, for: .normal)
            self.B9Button.setImage(nil, for: .normal)
            
            self.isTurnToMoveForX = true
        }
        let quitAction = UIAlertAction(title: "Quit", style: .cancel) { _ in
            self.firstRow = ["", "", ""]
            self.secondRow = ["", "", ""]
            self.thirdRow = ["", "", ""]
            
            self.navigationController?.popViewController(animated: true)
        }
        alertController.addAction(playAgainAction)
        alertController.addAction(quitAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func presentStalemateAlertController() {
        let alertController = UIAlertController(title: "DRAW!", message: nil, preferredStyle: .alert)
        
        let playAgainAction = UIAlertAction(title: "Play Again", style: .default) { _ in
            self.firstRow = ["", "", ""]
            self.secondRow = ["", "", ""]
            self.thirdRow = ["", "", ""]
            
            self.B1Button.setImage(nil, for: .normal)
            self.B2Button.setImage(nil, for: .normal)
            self.B3Button.setImage(nil, for: .normal)
            self.B4Button.setImage(nil, for: .normal)
            self.B5Button.setImage(nil, for: .normal)
            self.B6Button.setImage(nil, for: .normal)
            self.B7Button.setImage(nil, for: .normal)
            self.B8Button.setImage(nil, for: .normal)
            self.B9Button.setImage(nil, for: .normal)
            
            self.isTurnToMoveForX = true
        }
        
        let quitAction = UIAlertAction(title: "Quit", style: .cancel) { _ in
            self.firstRow = ["", "", ""]
            self.secondRow = ["", "", ""]
            self.thirdRow = ["", "", ""]
            
            self.navigationController?.popViewController(animated: true)
        }
        alertController.addAction(playAgainAction)
        alertController.addAction(quitAction)
        present(alertController, animated: true, completion: nil)
    }
}//End of class
