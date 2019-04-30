//
//  gameTopViewController.swift
//  Janken
//
//  Created by kobayashi ikki on 2019/03/26.
//  Copyright © 2019 Ikki. All rights reserved.
//

import UIKit

class GameTopViewController: UIViewController {

    //userDefaultsの宣言
    let userDefaults = UserDefaults.standard
    //screenのサイズ取得
    let screenWidth: CGFloat = UIScreen.main.bounds.size.width
    let screenHeight: CGFloat = UIScreen.main.bounds.size.height

    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        for uiv in view.subviews {
            uiv.setAutoLayout(width: screenWidth)
        }
    }

    //TODO: 全体的に同じ処理が多いので最適化したい
    ///グーを出した時のアクション
    @IBAction func gooActionButton(_ sender: Any) {
        userDefaults.set(1, forKey: "resultNum")
        userDefaults.set("goo", forKey: "hand")
        let selectGooCount: Int = userDefaults.integer(forKey: "selectGoo")
        userDefaults.set(selectGooCount + 1, forKey: "selectGoo")
        let next = storyboard!.instantiateViewController(withIdentifier: "ResultViewController")
        self.present(next, animated: true, completion: nil)
    }

    ///チョキを出した時のアクション
    @IBAction func chokiActionButton(_ sender: Any) {
        userDefaults.set(1, forKey: "resultNum")
        userDefaults.set("choki", forKey: "hand")
        let selectChokiCount: Int = userDefaults.integer(forKey: "selectChoki")
        userDefaults.set(selectChokiCount + 1, forKey: "selectChoki")
        let next = storyboard!.instantiateViewController(withIdentifier: "ResultViewController")
        self.present(next, animated: true, completion: nil)
    }

    ///パーを出した時のアクション
    @IBAction func parActionButton(_ sender: Any) {
        userDefaults.set(1, forKey: "resultNum")
        userDefaults.set("par", forKey: "hand")
        let selectParCount: Int = userDefaults.integer(forKey: "selectPar")
        userDefaults.set(selectParCount + 1, forKey: "selectPar")
        let next = storyboard!.instantiateViewController(withIdentifier: "ResultViewController")
        self.present(next, animated: true, completion: nil)
    }

}
