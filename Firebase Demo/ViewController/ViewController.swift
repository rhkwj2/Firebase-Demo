//
//  ViewController.swift
//  Firebase Demo
//
//  Created by Kim Yeon Jeong on 2019/12/23.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//
// https://www.youtube.com/watch?v=1HN7usMROt8

import UIKit
import AVKit

class ViewController: UIViewController {

    var videoPlayer:AVPlayer?
    var videoPlayerLayer:AVPlayerLayer?
    
    @IBOutlet weak var signupButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpElements()
    }
        
        override func viewWillAppear(_ animated: Bool) {
            
            //set up video in the background
            setUpVideo()
        }
    
    func setUpElements() {
        Utilities.styleFilledButton(signupButton)
        Utilities.styleHollowButton(loginButton)
        
    }
      
    func setUpVideo(){
        //Get the path to the resoure in the bundle
        let bundlePath = Bundle.main.path(forResource: "loginbg", ofType: "mp4")
        
        guard bundlePath != nil else{
            return
        }
        //Create a URL from it
        let url = URL(fileURLWithPath: bundlePath!)
        
        //Create the video plater item
        let item = AVPlayerItem(url: url)
        //Create the player
        videoPlayer = AVPlayer(playerItem: item)
        
        //Create the layer
        videoPlayerLayer = AVPlayerLayer(player: videoPlayer!)
        
        //Adjust the size and frame
        videoPlayerLayer?.frame = CGRect(x: -self.view.frame.size.width*1.5, y: 0, width: self.view.frame.size.width*4, height: self.view.frame.size.height)
        
        view.layer.insertSublayer(videoPlayerLayer!, at: 0)
              
        // Add it to the view and play it
        videoPlayer?.playImmediately(atRate: 0.3)

    }
}
