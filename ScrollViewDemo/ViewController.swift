//
//  ViewController.swift
//  ScrollViewDemo
//
//  Created by qingjiezhao on 7/20/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*
    4:320*480
    5:320*568
    6:375*667
    6+:414*736
    */
    let numOfPages = 3
    let pageWidth = 414
    let pageHeight = 736
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //scrollView的初始化
        var scrollView = UIScrollView()
        scrollView.frame = self.view.bounds
        //为了让内容横向滚动，设置横向内容宽度为3个页面的宽度总和
        scrollView.contentSize=CGSizeMake(CGFloat(pageWidth*numOfPages), CGFloat(pageHeight))
        scrollView.pagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.scrollsToTop = false
        
        //添加子页面
        for i in 0...numOfPages{
            var myViewController = MyViewController(number:(i+1))
            myViewController.view.frame = CGRectMake(CGFloat(pageWidth*i),
                CGFloat(0), CGFloat(pageWidth), CGFloat(pageHeight))
            scrollView.addSubview(myViewController.view)
        }
        self.view.addSubview(scrollView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

