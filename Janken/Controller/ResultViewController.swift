//
//  ResultViewController.swift
//  Janken
//
//  Created by kobayashi ikki on 2019/03/26.
//  Copyright © 2019 Ikki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var targetImage: UIImageView!

    let screenWidth: CGFloat = UIScreen.main.bounds.size.width
    let screenHeight: CGFloat = UIScreen.main.bounds.size.height

    //勝敗の結果保存
    var resultData: String = ""
    //userDefaultsの宣言
    let userDefaults = UserDefaults.standard

    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        let getPushButtonCategory: String = userDefaults.string(forKey: "hand")!
        let getResultNum: Int = userDefaults.integer(forKey: "resultNum")
        let vsResultNum: Int = Int(arc4random_uniform(3))

        //相手の手を出すためのイメージ
        let gooImage: UIImage = UIImage(named: "goo.jpg")!
        let chyokiImage: UIImage = UIImage(named: "chyoki.jpg")!
        let parImage: UIImage = UIImage(named: "par.jpg")!

        //結果の保持
        let winCount: Int = userDefaults.integer(forKey: "winCount")
        let drawCount: Int = userDefaults.integer(forKey: "drawCount")
        let loseCount: Int = userDefaults.integer(forKey: "loseCount")

        //じゃんけんの処理
        if getResultNum > vsResultNum {
            let winImage: UIImage = UIImage(named: "result1.png")!
            resultImage.image = winImage
            resultLabel.text = "WIN"
            resultData = "win"
            userDefaults.set(winCount + 1, forKey: "winCount")
        } else if getResultNum == vsResultNum {
            let drawImage: UIImage = UIImage(named: "result2.png")!
            resultImage.image = drawImage
            resultLabel.text = "draw"
            resultData = "draw"
            userDefaults.set(drawCount + 1, forKey: "drawCount")
        } else {
            let loseImage: UIImage = UIImage(named: "result3.png")!
            resultImage.image = loseImage
            resultLabel.text = "lose"
            resultData = "lose"
            userDefaults.set(loseCount + 1, forKey: "loseCount")
        }

        //相手が出した手を判定
        if resultData == "win"{
            targetImage.image = getPushButtonCategory == "goo" ? chyokiImage :
                getPushButtonCategory == "choki" ? parImage : gooImage
        } else if resultData == "draw"{
            targetImage.image = getPushButtonCategory == "goo" ? gooImage :
                getPushButtonCategory == "choki" ? chyokiImage : parImage
        } else {
            targetImage.image = getPushButtonCategory == "goo" ? parImage :
                getPushButtonCategory == "choki" ? gooImage : chyokiImage
        }

        //サイズ調節
        for uiv in view.subviews {
            uiv.setAutoLayout(width: screenWidth)
        }

    }
}
