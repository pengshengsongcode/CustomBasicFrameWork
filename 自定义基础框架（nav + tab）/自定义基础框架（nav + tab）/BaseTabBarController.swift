//
//  BaseTabBarController.swift
//  自定义基础框架（nav + tab）
//
//  Created by 彭盛凇 on 16/10/19.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    var titleDataList:  Array<String>                   = ["首页", "分类", "晒单区", "购物车", "个人中心"]
    
    var vcDataList:     Array<BaseViewController>       = [FirstViewController(), SecondViewController(), ThirdViewController(), ForthViewController(), FifthViewController()]
    
    var navDataList:    Array<UINavigationController>   = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        for index in 0..<vcDataList.count {
            
            let nav = UINavigationController(rootViewController: vcDataList[index])
            
            nav.tabBarItem.image = UIImage(named: titleDataList[index])?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
    
            nav.tabBarItem.selectedImage = UIImage(named: titleDataList[index] + "选中")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            
            vcDataList[index].title = titleDataList[index]
            
            navDataList.insert(nav, at: index)
            
        }
        
        viewControllers = navDataList
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
