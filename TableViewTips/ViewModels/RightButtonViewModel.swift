//
//  RightButtonViewModel.swift
//  TableViewTips
//
//  Created by 赵晓东 on 16/5/31.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class RightButtonViewModel: NSObject {
    
    weak var target : RightButtonItem!
    
    func rightButtonClick() -> Void {
        print("点击右按钮")
//        let VC = SecondViewController()
//        target.controllerTarget.navigationController?.pushViewController(VC, animated: true)
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let VC = sb.instantiateViewControllerWithIdentifier("test")
        target.controllerTarget.navigationController?.pushViewController(VC, animated: true)
    }
}
