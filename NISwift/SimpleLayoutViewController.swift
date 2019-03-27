//
//  SimpleLayoutViewController.swift
//  NISwift
//
//  Created by nixs on 2019/3/27.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class SimpleLayoutViewController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "基本布局-类比android线性布局"
        initUI()
    }
    func initUI() {
        let SC_W:CGFloat = UIScreen.main.bounds.width
        let SC_H:CGFloat = UIScreen.main.bounds.height
        
        let view_Hori_1:UIView = UIView()
            view_Hori_1.backgroundColor = UIColor.red
        let view_Hori_2:UIView = UIView()
            view_Hori_2.backgroundColor = UIColor.orange
        let view_Hori_3:UIView = UIView()
            view_Hori_3.backgroundColor = UIColor.blue
        
        let view_Verti_1:UIView = UIView()
            view_Verti_1.backgroundColor = UIColor.purple
        let view_Verti_2:UIView = UIView()
            view_Verti_2.backgroundColor = UIColor.orange
        let view_Verti_3:UIView = UIView()
            view_Verti_3.backgroundColor = UIColor.red
        self.view.addSubview(view_Hori_1)
        self.view.addSubview(view_Hori_2)
        self.view.addSubview(view_Hori_3)
        self.view.addSubview(view_Verti_1)
        self.view.addSubview(view_Verti_2)
        self.view.addSubview(view_Verti_3)
        view_Hori_1.snp.makeConstraints { (make) in
            make.top.left.equalTo(self.view)
            make.width.equalTo(SC_W/3)
            make.height.equalTo(SC_H/3)
        }
        view_Hori_2.snp.makeConstraints { (make) in
            make.width.height.top.equalTo(view_Hori_1)
            make.left.equalTo(view_Hori_1.snp.right)
        }
        view_Hori_3.snp.makeConstraints { (make) in
            make.width.height.top.equalTo(view_Hori_1)
            make.left.equalTo(view_Hori_2.snp.right)
        }
        view_Verti_1.snp.makeConstraints { (make) in
            make.top.equalTo(view_Hori_1.snp_bottomMargin)
            make.width.equalTo(SC_W)
            make.height.equalTo(SC_H/(2*3))
            make.left.equalTo(self.view)
        }
        view_Verti_2.snp.makeConstraints { (make) in
            make.width.height.left.equalTo(view_Verti_1)
            make.top.equalTo(view_Verti_1.snp_bottomMargin)
        }
        view_Verti_3.snp.makeConstraints { (make) in
            make.width.height.left.equalTo(view_Verti_1)
            make.top.equalTo(view_Verti_2.snp_bottomMargin)
        }
    }
    
}
