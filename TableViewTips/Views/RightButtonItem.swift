//
//  RightButtonItem.swift
//  TableViewTips
//
//  Created by 赵晓东 on 16/5/31.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class RightButtonItem: UIBarButtonItem {

    var rightButtonViewModel = RightButtonViewModel()
    
    weak var controllerTarget: ViewController!
    
    override func awakeFromNib() {
        self.rightButtonViewModel.target = self
        self.target = self.rightButtonViewModel
        self.action = #selector(self.rightButtonViewModel.rightButtonClick)
    }
}
