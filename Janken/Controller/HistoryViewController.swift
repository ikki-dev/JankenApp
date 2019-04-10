
//
//  ResultViewController.swift
//  Janken
//
//  Created by kobayashi ikki on 2019/03/25.
//  Copyright © 2019 Ikki. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let screenWidth:CGFloat = UIScreen.main.bounds.size.width
    let screenHeight:CGFloat = UIScreen.main.bounds.size.height
    
    let userDefault = UserDefaults.standard
    
    var resultArray : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //このクラスのデリゲードとデータソースを適用する
        tableView.delegate = self
        tableView.dataSource = self
        
        resultArray = ["勝ち -> " + String(userDefault.integer(forKey: "winCount")) + "回", "あいこ -> " + String(userDefault.integer(forKey: "drawCount")) + "回","負け -> " + String(userDefault.integer(forKey: "loseCount")) + "回", "グーを出した回数 -> " + String(userDefault.integer(forKey: "selectGoo")) + "回", "チョキを出した回数 -> " + String(userDefault.integer(forKey: "selectChoki")) + "回","パーを出した回数 -> " + String(userDefault.integer(forKey: "selectPar")) + "回",]

        for uiv in view.subviews{
            uiv.setAutoLayout(width: screenWidth)
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = resultArray[indexPath.row]
        return cell
    }
}
