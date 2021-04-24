//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var amaLable: UILabel!
    @IBOutlet weak var askButton: UIButton!
    
    let ballArray = [ #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5") ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.center.x = self.view.center.x
        amaLable.center.x = self.view.center.x
        askButton.center.x = self.view.center.x
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        imageView.image = ballArray.randomElement()
        imageView.isHidden = false
    }
    
}

