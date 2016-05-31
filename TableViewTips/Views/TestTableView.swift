//
//  TestTableView.swift
//  TableViewTips
//
//  Created by 赵晓东 on 16/5/31.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class TestTableView: UITableView {

    var testViewModel = TestViewModel()
    
    //创建页面
    override func awakeFromNib() {
        self.separatorStyle =  UITableViewCellSeparatorStyle.None//去掉分割线 一
        self.tableFooterView = UIView() //去掉分割线 二
        
        self.separatorInset = UIEdgeInsetsZero //分割线偏移量设为零 方法一
        
        //cell 自适应高度
        self.estimatedRowHeight = 44
        self.rowHeight = UITableViewAutomaticDimension
        
        testViewModel.target = self
        self.delegate = testViewModel
        self.dataSource = testViewModel
    }
    
    
}
