
//
//  gameTopViewController.swift
//  Janken
//
//  Created by kobayashi ikki on 2019/03/26.
//  Copyright © 2019 Ikki. All rights reserved.
//

import UIKit

class gameTopViewController: UIViewController {
    
    //userDefaultsの宣言
    let userDefaults = UserDefaults.standard
    
    let screenWidth:CGFloat = UIScreen.main.bounds.size.width
    let screenHeight:CGFloat = UIScreen.main.bounds.size.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        for uiv in view.subviews{
            uiv.setAutoLayout(width: screenWidth)
        }
    }
    
    @IBAction func gooActionButton(_ sender: Any) {
        userDefaults.set(1, forKey: "resultNum")
        userDefaults.set("goo", forKey: "hand")
        let selectGooCount : Int = userDefaults.integer(forKey: "selectGoo")
        userDefaults.set(selectGooCount + 1 , forKey: "selectGoo")
        let next = storyboard!.instantiateViewController(withIdentifier: "ResultViewController")
        self.present(next,animated: true, completion: nil)
    }
    
    @IBAction func chokiActionButton(_ sender: Any) {
        userDefaults.set(1, forKey: "resultNum")
        userDefaults.set("choki", forKey: "hand")
        let selectChokiCount : Int = userDefaults.integer(forKey: "selectChoki")
        userDefaults.set(selectChokiCount + 1 , forKey: "selectChoki")
        let next = storyboard!.instantiateViewController(withIdentifier: "ResultViewController")
        self.present(next,animated: true, completion: nil)
    }
    
    @IBAction func parActionButton(_ sender: Any) {
        userDefaults.set(1, forKey: "resultNum")
        userDefaults.set("par", forKey: "hand")
        let selectParCount : Int = userDefaults.integer(forKey: "selectPar")
        userDefaults.set(selectParCount + 1 , forKey: "selectPar")
        let next = storyboard!.instantiateViewController(withIdentifier: "ResultViewController")
        self.present(next,animated: true, completion: nil)
    }
    
}
