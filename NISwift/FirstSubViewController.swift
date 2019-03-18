//
//  FirstSubViewController.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class FirstSubViewController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "子页面"
        self.addAllSubViews()
    }
    
    func addAllSubViews() {
        //let subViews = SubView(frame: CGRect(x: 80, y: 80, width: 200, height: 50))
        let subViews = SubView()
        
        subViews.titleLabel.text = "第一个页面的子页面"
        subViews.detailLabel.text = "第一个页面的子页面详情"
        self.view.addSubview(subViews)
        subViews.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp_topMargin)
            make.left.right.equalTo(view)
            make.height.equalTo(80)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
