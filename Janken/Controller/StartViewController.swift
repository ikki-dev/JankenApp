//
//  ViewController.swift
//  Janken
//
//  Created by kobayashi ikki on 2019/03/25.
//  Copyright © 2019 Ikki. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    let screenWidth:CGFloat = UIScreen.main.bounds.size.width
    let screenHeight:CGFloat = UIScreen.main.bounds.size.height

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for uiv in view.subviews{
            uiv.setAutoLayout(width: screenWidth)
        }
    }

   @IBAction func backToTop(segue: UIStoryboardSegue) {}
    
    @IBAction func backFromGameView(_ sender: Any) {}
    
}

