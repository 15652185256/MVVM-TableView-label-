//
//  ViewController.swift
//  TableViewTips
//
//  Created by 赵晓东 on 16/5/30.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var rightButtonItem: RightButtonItem!
    
    deinit{
        print("内存没有泄漏")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.createNav()
    }
    
    //创建头部
    func createNav() {
        //设置页面背景
        self.view.backgroundColor = UIColor.whiteColor()
        
        //设置导航不透明
        self.navigationController?.navigationBar.translucent = false
        
        //设置导航的标题
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:RGBA (255.0, g:255.0, b: 255.0, a: 1),NSFontAttributeName:UIFont.systemFontOfSize(18)]
        self.navigationItem.title = "tableView 自适应高度"
        
        //设置导航背景图
        self.navigationController?.navigationBar.barTintColor = RGBA (86.0, g:173.0, b: 216.0, a: 1)
        
        rightButtonItem.controllerTarget = self
    }
    
    
    override func viewDidLayoutSubviews() {
        self.tableView.separatorInset = UIEdgeInsetsZero//分割线偏移量设为零 方法二
        self.tableView.layoutMargins = UIEdgeInsetsZero
    }

    
    
    

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

