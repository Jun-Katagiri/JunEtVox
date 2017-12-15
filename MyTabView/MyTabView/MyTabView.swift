//
//  MyTabView.swift
//  MyTabView
//
//  Created by カタギリ ジュン on 2017/12/13.
//  Copyright © 2017年 カタギリ ジュン. All rights reserved.
//

import UIKit

class MyTabView : UIView {
    
    var mySubViews:[Int:UIView] = [:]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    override func didAddSubview(_ subview: UIView) {
        super.didAddSubview(subview)
        subview.frame = self.frame
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    func addTab(_ view: UIView,tabNo num:Int) {
        super.addSubview(view)
        mySubViews[num] = view
        
    }
    
    func removeTab(tabNo num:Int) {
        mySubViews[num]?.removeFromSuperview()
        mySubViews.removeValue(forKey: num)
    }
    
    func frontTab(tabNo num:Int) {
        bringSubview(toFront: mySubViews[num]!)
    }
}
