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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tab.backgroundColor = UIColor.red
        tab.frame = view.frame
        
        view.addSubview(tab)
        //view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

