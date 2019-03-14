//
//  ViewController.swift
//  NISwift
//
//  Created by nixs on 2019/3/14.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let testView = UIView()
        testView.backgroundColor = UIColor.cyan
        view.addSubview(testView)
        testView.snp.makeConstraints { (make) in
            make.width.equalTo(100)//宽100
            make.height.equalTo(100)//高100
            make.centerX.equalTo(view)
            make.top.equalTo(view.snp_topMargin)
        }
        //com.nixs.NISwift
        let testLab = UILabel()
        testLab.text = "学习一门新的编程语言，Code是少不了的。在翻译的时候，自己也是在不停的Coding,把书上的每段代码都敲了一遍。学编程，动手是关键，避免眼高手地的情况。在写代码时不要按部就班的去Coding，要学会思考，学会举一反三，学会自我的扩充。举个例子，在一个Demo中，你可以去尝试修改一些东西，然后预测一下将会得到什么样的结果，然后去验证是否和自己的预知一致，若不一致就要寻找原因了。其实在问题中成长是最快的，每个问题的解决就是自我提高的一个过程。有些事儿需要天赋，但有些事儿还是需要努力的，谁生下来就是技术大牛呢~大牛大部分不都是从吃白菜长大的么？好了不扯淡了，“少壮不努力，长大学编程”，切入今天的正题，来窥探一下Swift语言。"
        testLab.numberOfLines = 0
        testLab.textAlignment = NSTextAlignment.left
        testLab.backgroundColor = UIColor.red
        view.addSubview(testLab)
        testLab.snp.makeConstraints { (make) in
            make.top.equalTo(testView.snp_bottomMargin).offset(10)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
        }
        
        
    }
    

}

