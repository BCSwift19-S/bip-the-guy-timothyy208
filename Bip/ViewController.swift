//
//  ViewController.swift
//  Bip
//
//  Created by Timothy Yang on 2/4/19.
//  Copyright © 2019 Timothy Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageToPunch: UIImageView!
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
    
    

    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        animateImage()
        //
    }
}

