//
//  CardView.swift
//  HotFood
//
//  Created by ly on 15/5/24.
//  Copyright (c) 2015年 ly. All rights reserved.
//

import UIKit

class CardView: UIView {

    var foodImageView: UIImageView = UIImageView()
    
    var foodImage: UIImage?{
        didSet{
            foodImageView.image = foodImage
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        
        
        
        self.addSubview(foodImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        foodImageView.frame = CGRectInset(self.bounds, 10, 40)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
