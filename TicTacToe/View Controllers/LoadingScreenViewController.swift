//
//  LoadingScreenViewController.swift
//  TicTacToe
//
//  Created by Michael Kampouris on 2/22/18.
//  Copyright © 2018 broCode. All rights reserved.
//

var audioPlayer: AVAudioPlayer?
import UIKit
import AVFoundation

class LoadingScreenViewController: UIViewController {
    
    static let shared = LoadingScreenViewController()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Credits.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print(error)
        }


        delayWithSeconds(3.0) {
            self.performSegue(withIdentifier: "toPlayerSelect", sender: self)
        }
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
