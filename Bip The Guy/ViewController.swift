//
//  ViewController.swift
//  Bip The Guy
//
//  Created by Claudia Yang on 9/16/19.
//  Copyright © 2019 Claudia Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //MARK: functions
    func animateImage() {
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        
        //shrink image by 60p
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x + shrinkValue, y: self.imageToPunch.bounds.origin.y + shrinkValue, width: self.imageToPunch.bounds.size.width - shrinkValue, height: self.imageToPunch.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.imageToPunch.bounds = bounds}, completion: nil)
        
    }
    
    //MARK: actions
    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    
    @IBAction func imageTapped(_ sender:
        UITapGestureRecognizer) {
        animateImage()
    }
    
}

