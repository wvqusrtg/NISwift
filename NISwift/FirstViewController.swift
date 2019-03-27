//
//  FirstViewController.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class FirstViewController: SuperViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "主页"
        self.addAllSubViews()
    }
    
    func addAllSubViews() {
        //let subViews = SubView(frame: CGRect(x: 80, y: 80, width: 200, height: 50))
        let subViews = SubView()
        subViews.titleLabel.text = "第一个页面"
        subViews.detailLabel.text = "第一个页面详情"
        self.view.addSubview(subViews)
        subViews.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp_topMargin)
            make.left.equalTo(view.snp_leftMargin)
            make.right.equalTo(view.snp_rightMargin)
            make.height.equalTo(80)
        }
        
        //let button: UIButton = UIButton(frame: CGRect(x: 30, y: 300, width: 50, height:50))
        let button: UIButton = UIButton()
        button.setTitle("PUSH", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(self.tapButton(sender:)), for: .touchUpInside)
        self.view.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.top.equalTo(subViews.snp_bottomMargin).offset(10)
            make.width.equalTo(subViews)
            make.centerX.equalTo(self.view)
            make.height.equalTo(subViews)
        }
        
        let buttonLayout:UIButton = UIButton()
        buttonLayout.setTitle("简单布局-类比android版本和OC版本", for: .normal)
        buttonLayout.setTitleColor(UIColor.white, for: .normal)
        buttonLayout.backgroundColor = UIColor.red
        buttonLayout.addTarget(self, action: #selector(self.tapButtonLayout(sender:)), for: .touchUpInside)
        self.view.addSubview(buttonLayout)
        buttonLayout.snp.makeConstraints { (make) in
            make.top.equalTo(button.snp_bottomMargin).offset(10)
            make.left.right.width.height.equalTo(button)
        }
        
    }
    @objc func tapButtonLayout(sender:UIButton) {
        self.navigationController?.show(SimpleLayoutViewController(), sender: nil)
    }
    
    @objc func tapButton(sender: UIButton) {
        self.navigationController?.show(FirstSubViewController(), sender: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
}
