//
//  SubView.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class SubView: UIView {
    var width: CGFloat {
        get {
            return self.frame.size.width
        }
    }
    
    var height: CGFloat {
        get {
            return self.frame.size.height
        }
    }
    
    var titleLabel: TitleLabel!
    var detailLabel: DetailLabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubViews()
    }
    
    func addSubViews() {
        //self.titleLabel = TitleLabel(frame: CGRect(x: 0, y: 50, width: self.width, height: 18))
        self.titleLabel = TitleLabel()
        self.titleLabel.backgroundColor = UIColor.gray
        self.addSubview(self.titleLabel)
        self.titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.snp_topMargin)
            make.left.right.equalTo(self)
            make.height.equalTo(40)
        }
        
        //self.detailLabel = DetailLabel(frame: CGRect(x: 0, y: 70, width: self.width, height:15))
        self.detailLabel = DetailLabel()
        self.detailLabel.backgroundColor = UIColor.lightGray
        self.addSubview(self.detailLabel)
        self.detailLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.titleLabel.snp_bottomMargin)
            make.left.right.equalTo(self)
            make.height.equalTo(40)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
