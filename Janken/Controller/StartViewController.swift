//
//  ViewController.swift
//  Janken
//
//  Created by kobayashi ikki on 2019/03/25.
//  Copyright © 2019 Ikki. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    //画面サイズの取得
    let screenWidth: CGFloat = UIScreen.main.bounds.size.width
    let screenHeight: CGFloat = UIScreen.main.bounds.size.height

    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        //TODO: AutoLayoutの処理を最適化
        for uiv in view.subviews {
            uiv.setAutoLayout(width: screenWidth)
        }

    }

    ///ホームに戻るボタン
    @IBAction func backToTop(segue: UIStoryboardSegue) {}
    ///戦績を見るボタン
    @IBAction func backFromGameView(_ sender: Any) {}

}
