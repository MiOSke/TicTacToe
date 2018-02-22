//
//  CreditsViewController.swift
//  TicTacToe
//
//  Created by Michael Kampouris on 2/22/18.
//  Copyright © 2018 broCode. All rights reserved.
//

import UIKit
import AVFoundation

class CreditsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        delayWithSeconds(20) {
            self.performSegue(withIdentifier: "backToBeginning", sender: Any?.self)
        }
    }
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
}
