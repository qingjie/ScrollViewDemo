//
//  MyViewController.swift
//  ScrollViewDemo
//
//  Created by qingjiezhao on 7/20/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

class MyViewController: UIViewController{
    
    var number:Int!
    
    let colorMap=[
        1:UIColor.blackColor(),
        2:UIColor.orangeColor(),
        3:UIColor.blueColor()
    ]
    
    init(number initNumber : Int){
        self.number = initNumber
        super.init(nibName:nil, bundle:nil)
    }

    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad(){
        var numberLabel = UILabel(frame:CGRectMake(0,0,100,100))
        numberLabel.center = self.view.center
        numberLabel.text = "page \(number)"
        numberLabel.textColor = UIColor.whiteColor()
        self.view.addSubview(numberLabel)
        self.view.backgroundColor = colorMap[number]
    }
}