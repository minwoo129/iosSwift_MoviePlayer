//
//  ViewController.swift
//  MoviePlayer
//
//  Created by 류민우 on 2023/08/05.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPlayInternalMovie(_ sender: UIButton) {
        let filePath:String? = Bundle.main.path(forResource: "FastTyping", ofType: "mp4");
        let url = NSURL(fileURLWithPath: filePath!);
        
        let playerController = AVPlayerViewController()
        
        let player = AVPlayer(url: url as URL);
        playerController.player = player
        
        self.present(playerController, animated: true) {
            player.play();
        }
    }
    
    @IBAction func btnPlayExternalMovie(_ sender: UIButton) {
    }
}

