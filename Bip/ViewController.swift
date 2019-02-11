//
//  ViewController.swift
//  Bip
//
//  Created by Timothy Yang on 2/4/19.
//  Copyright © 2019 Timothy Yang. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var imageToPunch: UIImageView!
    
    var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    func animateImage() {
        let bounds = self.imageToPunch.bounds
        
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x + 60, y: self.imageToPunch.bounds.origin.y + 60, width: self.imageToPunch.bounds.width - 60, height: self.imageToPunch.bounds.height - 60)
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: {self.imageToPunch.bounds = bounds}, completion: nil)
    }
    @IBAction func openPhotoLibrary(_ sender: UIButton) {
    }
    
    @IBAction func takePhoto(_ sender: UIButton) {
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer){
        //var soundName: String
        //sound
        
        
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("\(soundName) could not be played as a sound")
            }
        } else {
            //sound no work
            print("did not load sound file: \(soundName)")
        }
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("\(soundName) could not be played as a sound")
            }
        } else {
            //sound no work
            print("did not load sound file: \(soundName)")
        }
    }

    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        animateImage()
        playSound(soundName: "punchSound", audioPlayer: &audioPlayer)
        //
        
    }
}

