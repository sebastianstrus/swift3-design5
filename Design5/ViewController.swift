//
//  ViewController.swift
//  Design5
//
//  Created by Sebastian Strus on 2017-03-27.
//  Copyright © 2017 Sebastian Strus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var toggleAction = true
    
    @IBOutlet weak var popup: UIVisualEffectView!
    
    
    var originalCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popup.alpha = 0
        originalCenter = popup.center
    }

    
    
    

    @IBAction func showPopup(_ sender: Any) {
        
        
        if toggleAction {
            popup.transform = CGAffineTransform(scaleX: 0.3, y: 2)
        }
        else {
            popup.layer.anchorPoint = CGPoint(x: 0.5, y: 0)
            popup.center.y = popup.center.y - (popup.frame.height / 2)
            popup.transform = CGAffineTransform(rotationAngle: 1.0)
        }
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
            self.popup.transform = .identity
        }) { (succes) in
            self.popup.center = self.originalCenter
            self.popup.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        }
        
        
        
        popup.alpha = 1
    }

    @IBAction func okPressed(_ sender: UIButton) {
        popup.alpha = 0
        toggleAction = !toggleAction
    }
}

