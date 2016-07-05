//
//  ViewController.swift
//  ImageAnimationTest
//
//  Created by Mike Camara on 19/11/2015.
//  Copyright © 2015 Mike Camara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // sequence animated
        
        imageView.animationImages = [
            UIImage(named: "1.png")!,
            UIImage(named: "2.png")!,
            UIImage(named: "3.png")!
           ]
        
        imageView.animationDuration = 3.0
        imageView.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

