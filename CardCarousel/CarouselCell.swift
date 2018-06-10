//
//  CarouselCell.swift
//  CardCarousel
//
//  Created by Reona Kubo on 2018/06/10.
//  Copyright © 2018年 Reona Kubo. All rights reserved.
//

import UIKit

class CarouselCell: UICollectionViewCell {
    
    var titleLabel:UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    func setup() {
        // ここで配置する
        let margin:CGFloat = 15
        let width:CGFloat = self.contentView.frame.width
        let height:CGFloat = self.contentView.frame.height
        
        
        titleLabel = UILabel()
        titleLabel.frame = CGRect(x:margin,
                                  y:margin,
                                  width: width - margin * 2,
                                  height:50)
        titleLabel.textAlignment = .center
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        self.contentView.addSubview(titleLabel)
        
        
        self.contentView.backgroundColor = UIColor.white
        self.contentView.layer.borderWidth = 2
        self.contentView.layer.cornerRadius = 10
        self.contentView.layer.shadowOffset = CGSize(width: 1,height: 1)
        self.contentView.layer.shadowColor = UIColor.gray.cgColor
        self.contentView.layer.shadowOpacity = 0.7
        self.contentView.layer.shadowRadius = 5
        
    }
}
