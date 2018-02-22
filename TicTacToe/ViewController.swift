//
//  ViewController.swift
//  TicTacToe
//
//  Created by Michael Kampouris on 2/22/18.
//  Copyright © 2018 broCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var winningLabel: UILabel!
    
    @IBOutlet weak var a1button: UIButton!
    @IBOutlet weak var a2Button: UIButton!
    @IBOutlet weak var a3Button: UIButton!
    
    @IBOutlet weak var b1Button: UIButton!
    @IBOutlet weak var b2Button: UIButton!
    @IBOutlet weak var b3Button: UIButton!
    
    @IBOutlet weak var c1Button: UIButton!
    @IBOutlet weak var c2Button: UIButton!
    @IBOutlet weak var c3Button: UIButton!
    
    @IBOutlet weak var playerOneLabel: UILabel!
    @IBOutlet weak var playerTwoLabel: UILabel!
    
    var toggle: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerTwoLabel.alpha = 0.25
        toggle = true
    }
    
    @IBAction func a1Pressed(_ sender: Any) {
        if toggle {
            a1button.setImage(#imageLiteral(resourceName: "X"), for: .normal)
            a1button.tag = 1
            playerOneLabel.alpha = 0.25
            playerTwoLabel.alpha = 1
            if checkForP1WinningCombinations() {
                winningLabel.text = "Player One Wins!!!"
            }
        }else{
            a1button.setImage(#imageLiteral(resourceName: "O"), for: .normal)
            a1button.tag = 2
            playerOneLabel.alpha = 1
            playerTwoLabel.alpha = 0.25
            if checkforP2WinningCombinations() {
                winningLabel.text = "Player Two Wins!!!"
            }
        }
        a1button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func a2Pressed(_ sender: Any) {
        if toggle {
            a2Button.setImage(#imageLiteral(resourceName: "X"), for: .normal)
            a2Button.tag = 1
            playerOneLabel.alpha = 0.25
            playerTwoLabel.alpha = 1
            if checkForP1WinningCombinations() {
                winningLabel.text = "Player One Wins!!!"
            }
        }else{
            a2Button.setImage(#imageLiteral(resourceName: "O"), for: .normal)
            a2Button.tag = 2
            playerOneLabel.alpha = 1
            playerTwoLabel.alpha = 0.25
            if checkforP2WinningCombinations() {
                winningLabel.text = "Player Two Wins!!!"
            }
        }
        a2Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func a3Pressed(_ sender: Any) {
        if toggle {
            a3Button.setImage(#imageLiteral(resourceName: "X"), for: .normal)
            a3Button.tag = 1
            playerOneLabel.alpha = 0.25
            playerTwoLabel.alpha = 1
            if checkForP1WinningCombinations() {
                winningLabel.text = "Player One Wins!!!"
            }
        }else{
            a3Button.setImage(#imageLiteral(resourceName: "O"), for: .normal)
            a3Button.tag = 2
            playerOneLabel.alpha = 1
            playerTwoLabel.alpha = 0.25
            if checkforP2WinningCombinations() {
                winningLabel.text = "Player Two Wins!!!"
            }
        }
        a3Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func b1Pressed(_ sender: Any) {
        if toggle {
            b1Button.setImage(#imageLiteral(resourceName: "X"), for: .normal)
            b1Button.tag = 1
            playerOneLabel.alpha = 0.25
            playerTwoLabel.alpha = 1
            if checkForP1WinningCombinations() {
                winningLabel.text = "Player One Wins!!!"
            }
        }else{
            b1Button.setImage(#imageLiteral(resourceName: "O"), for: .normal)
            b1Button.tag = 2
            playerOneLabel.alpha = 1
            playerTwoLabel.alpha = 0.25
            if checkforP2WinningCombinations() {
                winningLabel.text = "Player Two Wins!!!"
            }
        }
        b1Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func b2Pressed(_ sender: Any) {
        if toggle {
            b2Button.setImage(#imageLiteral(resourceName: "X"), for: .normal)
            b2Button.tag = 1
            playerOneLabel.alpha = 0.25
            playerTwoLabel.alpha = 1
            if checkForP1WinningCombinations() {
                winningLabel.text = "Player One Wins!!!"
            }
        }else{
            b2Button.setImage(#imageLiteral(resourceName: "O"), for: .normal)
            b2Button.tag = 2
            playerOneLabel.alpha = 1
            playerTwoLabel.alpha = 0.25
            if checkforP2WinningCombinations() {
                winningLabel.text = "Player Two Wins!!!"
            }
        }
        b2Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func b3Pressed(_ sender: Any) {
        if toggle {
            b3Button.setImage(#imageLiteral(resourceName: "X"), for: .normal)
            b3Button.tag = 1
            playerOneLabel.alpha = 0.25
            playerTwoLabel.alpha = 1
            if checkForP1WinningCombinations() {
                winningLabel.text = "Player One Wins!!!"
            }
        }else{
            b3Button.setImage(#imageLiteral(resourceName: "O"), for: .normal)
            b3Button.tag = 2
            playerOneLabel.alpha = 1
            playerTwoLabel.alpha = 0.25
            if checkforP2WinningCombinations() {
                winningLabel.text = "Player Two Wins!!!"
            }
        }
        b3Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func c1Pressed(_ sender: Any) {
        if toggle {
            c1Button.setImage(#imageLiteral(resourceName: "X"), for: .normal)
            c1Button.tag = 1
            playerOneLabel.alpha = 0.25
            playerTwoLabel.alpha = 1
            if checkForP1WinningCombinations() {
                winningLabel.text = "Player One Wins!!!"
            }
        }else{
            c1Button.setImage(#imageLiteral(resourceName: "O"), for: .normal)
            c1Button.tag = 2
            playerOneLabel.alpha = 1
            playerTwoLabel.alpha = 0.25
            if checkforP2WinningCombinations() {
                winningLabel.text = "Player Two Wins!!!"
            }
        }
        c1Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func c2Pressed(_ sender: Any) {
        if toggle {
            c2Button.setImage(#imageLiteral(resourceName: "X"), for: .normal)
            c2Button.tag = 1
            playerOneLabel.alpha = 0.25
            playerTwoLabel.alpha = 1
            if checkForP1WinningCombinations() {
                winningLabel.text = "Player One Wins!!!"
            }
        }else{
            c2Button.setImage(#imageLiteral(resourceName: "O"), for: .normal)
            c2Button.tag = 2
            playerOneLabel.alpha = 1
            playerTwoLabel.alpha = 0.25
            if checkforP2WinningCombinations() {
                winningLabel.text = "Player Two Wins!!!"
            }
        }
        c2Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func c3Pressed(_ sender: Any) {
        if toggle {
            c3Button.setImage(#imageLiteral(resourceName: "X"), for: .normal)
            c3Button.tag = 1
            playerOneLabel.alpha = 0.25
            playerTwoLabel.alpha = 1
            if checkForP1WinningCombinations() {
                winningLabel.text = "Player One Wins!!!"
            }
        }else{
            c3Button.setImage(#imageLiteral(resourceName: "O"), for: .normal)
            c3Button.tag = 2
            playerOneLabel.alpha = 1
            playerTwoLabel.alpha = 0.25
            if checkforP2WinningCombinations() {
                winningLabel.text = "Player Two Wins!!!"
            }
        }
        c3Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        let buttons = [a1button, a2Button, a3Button, b1Button, b2Button, b3Button, c1Button, c2Button, c3Button]
        
        for button in buttons {
            button?.setImage(nil, for: .normal)
            button?.isEnabled = true
            button?.tag = 0
        }
        toggle = true
        playerOneLabel.alpha = 1
        playerTwoLabel.alpha = 0.25
        winningLabel.text = ""
    }
    
    func checkForP1WinningCombinations() -> Bool{
        if a1button.tag == 1 && a2Button.tag == 1 && a3Button.tag == 1 {return true}
        else if b1Button.tag == 1 && b2Button.tag == 1 && b3Button.tag == 1 {return true}
        else if c1Button.tag == 1 && c2Button.tag == 1 && c3Button.tag == 1 {return true}
        else if a1button.tag == 1 && b1Button.tag == 1 && c1Button.tag == 1 {return true}
        else if a2Button.tag == 1 && b2Button.tag == 1 && c2Button.tag == 1 {return true}
        else if a3Button.tag == 1 && b3Button.tag == 1 && c3Button.tag == 1 {return true}
        else if a1button.tag == 1 && b2Button.tag == 1 && c3Button.tag == 1 {return true}
        else if a3Button.tag == 1 && b2Button.tag == 1 && c1Button.tag == 1 {return true}
        else {return false}
    }
    
    func checkforP2WinningCombinations() -> Bool {
        if a1button.tag == 2 && a2Button.tag == 2 && a3Button.tag == 2 {return true}
        else if b1Button.tag == 2 && b2Button.tag == 2 && b3Button.tag == 2 {return true}
        else if c1Button.tag == 2 && c2Button.tag == 2 && c3Button.tag == 2 {return true}
        else if a1button.tag == 2 && b1Button.tag == 2 && c1Button.tag == 2 {return true}
        else if a2Button.tag == 2 && b2Button.tag == 2 && c2Button.tag == 2 {return true}
        else if a3Button.tag == 2 && b3Button.tag == 2 && c3Button.tag == 2 {return true}
        else if a1button.tag == 2 && b2Button.tag == 2 && c3Button.tag == 2 {return true}
        else if a3Button.tag == 2 && b2Button.tag == 2 && c1Button.tag == 2 {return true}
        else {return false}
    }
    
}

