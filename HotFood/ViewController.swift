//
//  ViewController.swift
//  HotFood
//
//  Created by ly on 15/5/22.
//  Copyright (c) 2015年 ly. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var screenWidth = CGRectGetWidth(UIScreen.mainScreen().bounds)
    var screenHeight = CGRectGetHeight(UIScreen.mainScreen().bounds)
    
    var starView:StarView = StarView(frame: CGRectMake(0, 0, 100, 100))
    var cardViewContainer:CardViewContainer = CardViewContainer(frame: CGRectMake(0, 0, 320, 260))
    var num:Int = 99
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blackColor()
        
        cardViewContainer.center = CGPointMake(self.view.center.x, self.view.center.y-100)
        cardViewContainer.delegate = self
        self.view.addSubview(cardViewContainer)
        
        starView.center = CGPointMake(self.view.center.x, self.view.center.y+200)
        self.view .addSubview(starView)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ViewController:CardViewContainerDelegate{
    func cardDidEndAnimationStart() {
        var num:Int = Int(arc4random_uniform(99))
        starView.startLoadNumber(num)
    }
}

