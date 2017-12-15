//
//  ViewController.swift
//  MyTabView
//
//  Created by カタギリ ジュン on 2017/12/13.
//  Copyright © 2017年 カタギリ ジュン. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tab:MyTabView = MyTabView()
    let tab1 = UIView()
    let tab2 = UIView()
    let tab3 = UIView()
    let tab4 = UIView()
    let tab5 = UIView()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //親タブ追加
        tab.frame = view.frame
        view.addSubview(tab)
        
        tab1.backgroundColor = UIColor.red
        tab2.backgroundColor = UIColor.blue
        tab3.backgroundColor = UIColor.green
        tab4.backgroundColor = UIColor.yellow
        tab5.backgroundColor = UIColor.black
        
        // 子タブを番号と一緒に追加
        tab.addTab(tab1, tabNo: 1)
        tab.addTab(tab2, tabNo: 2)
        tab.addTab(tab3, tabNo: 3)
        tab.addTab(tab4, tabNo: 4)
        tab.addTab(tab5, tabNo: 5)

        // 番号指定で上位表示
        tab.frontTab(tabNo: 3) // green
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

