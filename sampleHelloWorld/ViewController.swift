//
//  ViewController.swift
//  sampleHelloWorld
//
//  Created by Eriko Ichinohe on 2017/08/29.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabe: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabe.text = "こんにちは世界"
    }
    
    @IBAction func tapButton(_ sender: UIButton) {
        
        //ボタンが押された時やりたい処理を記述する
        var greeting = "こんにちは"
        var country = "セブ"
        var comment = "アツいね！"
        var temp = 35
        
//        myLabe.text = "こんにちはセブ、アツいね！"
        // 文字だけの連結の場合、＋マークが使える
        // 数字が混ざっているとエラーになる
        //        myLabe.text = greeting + country + "、" + comment + temp + "℃です"
        //\()の間に変数を指定して文字を連結する方法を変数展開と呼びます
        //変数展開の形で記述すると、数字も文字列の一部として埋め込みやすいです
        myLabe.text = "\(greeting)\(country),\(comment)\(temp)℃です"
        
        //デバッグエリアに変数の中身を表示できる
        print(myLabe.text!)
    }
    
    //TODO:ボタンを一つ増やして、そのボタンを押したら、ラベルに「Hello,World!」と表示されるようにしてください
    
    @IBAction func tapHello(_ sender: UIButton) {
        myLabe.text = "Hello,World!"
    }
    
    //スイッチが切り替わった時発動
    //sender:イベントを発動させた部品のこと
    @IBAction func changeSwitch(_ sender: UISwitch) {
        
        print(sender.isOn)
        
        
        if sender.isOn == true {
            print("スイッチONです")
        }else{
            print("スイッチOFFです")
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

