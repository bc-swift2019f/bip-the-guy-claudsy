//
//  ViewController.swift
//  Bip The Guy
//
//  Created by Claudia Yang on 9/16/19.
//  Copyright © 2019 Claudia Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func upBy200Pressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations:
            { self.imageView.frame.origin.y -= 200})
    }
    
    
    
    @IBAction func expandBy60Pressed(_ sender: Any) {
        let largerRec = CGRect(x: imageView.bounds.origin.x - 60, y: imageView.bounds.origin.y - 60, width: imageView.bounds.width + 60, height: imageView.bounds.height + 60)
        
        UIView.animate(withDuration: 0.2, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, animations:
            { self.imageView.bounds = largerRec})
    }
    
    @IBAction func fadeOutPressed(_ sender: UIButton) {
    }
    
    @IBAction func pushRightPressed(_ sender: UIButton) {
    }
    
    @IBAction func rotate180Pressed(_ sender: UIButton) {
    }
    
    
    @IBAction func slideRight100Pressed(_ sender: UIButton) {
    }
    
    @IBAction func changeBackgroundPressed(_ sender: UIButton) {
    }
    
    @IBAction func resetPressed(_ sender: UIButton) {
    }
    
    
}

