//
//  SecondViewController.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class SecondViewController: SuperViewController,UITableViewDelegate,UITableViewDataSource {
    let cellReuseIdentifier: String = "ThemeSwitcherCell"
    var switcher: UISwitch!
    var tableView: UITableView!
    var selectIndexRow: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "选择主题"
        self.addTableView()
    }
    func addTableView() {
        self.tableView = UITableView(frame: self.view.bounds)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView()
        self.tableView.register(ThemeSwitcherCell.self, forCellReuseIdentifier: self.cellReuseIdentifier)
        self.view.addSubview(self.tableView)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func handelNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
        if (self.tableView != nil){
            self.tableView.backgroundColor = theme.backgroundColor
        }
    }
    //MARK: - UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: ThemeSwitcherCell? = tableView.dequeueReusableCell(withIdentifier: self.cellReuseIdentifier) as? ThemeSwitcherCell
        if cell==nil{
            cell = ThemeSwitcherCell(style: .default, reuseIdentifier: self.cellReuseIdentifier)
        }
        if indexPath.row == self.selectIndexRow {
            cell?.accessoryType = .checkmark
        }else{
            cell?.accessoryType = .none
        }
        cell?.configCell(index: indexPath.row)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectIndexRow = indexPath.row
        self.tableView.reloadData()
    }
}
