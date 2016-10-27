//
//  MusicViewController.swift
//  Ryan's Trip
//
//  Created by Ryan Yang on 10/25/16.
//  Copyright © 2016 F4. All rights reserved.
//

import UIKit
import AVFoundation

class MusicViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Music"

        // Do any additional setup after loading the view.
        do{
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "bgm", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            
            
            var audioSession = AVAudioSession.sharedInstance()
            
            do{
                try audioSession.setCategory(AVAudioSessionCategoryPlayback)
            }
        }
        catch{
            print(error)
            
            
        }
    }
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    @IBAction func play(_ sender: AnyObject) {
        audioPlayer.play()
    }
    
    
    
    @IBAction func pause(_ sender: AnyObject) {
        if audioPlayer.isPlaying{
            audioPlayer.pause()
        }else{
        
        
        }
    }
    
    @IBAction func restart(_ sender: AnyObject) {
        if audioPlayer.isPlaying{
            audioPlayer.currentTime = 0
            audioPlayer.play()
        }else{
            audioPlayer.play()
            
        }
    }
    
}
