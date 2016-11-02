//
//  MainViewController.swift
//  ZXWeiBo
//
//  Created by 朱星 on 2016/11/2.
//  Copyright © 2016年 zhuxing. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    tabBar.tintColor = UIColor.orange
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBar.addSubview(composeButton)
        let rect = composeButton.frame
        let width = tabBar.bounds.width / CGFloat(childViewControllers.count)
        composeButton.frame = CGRect(x: 2 * width, y: 0, width: width, height: rect.height)
    }
    //MARK: - 懒加载
    lazy var composeButton: UIButton = {
        () -> UIButton
        in
        //1、创建按钮
        /*
        let btn = UIButton()
        //2、设置当前图片
        btn.setImage(UIImage.init(named: "tabbar_compose_icon_add"), for: .normal)
        //3、设置背景图片
        btn.setImage(UIImage.init(named: "tabbar_compose_icon_add_highlighted"), for: .highlighted)
        btn.setBackgroundImage(UIImage.init(named: "tabbar_compose_button"), for: .normal)
        btn.setBackgroundImage(UIImage.init(named: "tabbar_compose_button_highlighted"), for: .highlighted)
          btn.sizeToFit()
        */
//        let btn = UIButton()
//        btn.createButton(imageName: "tabbar_compose_icon_add", backgroundImage: "tabbar_compose_button")
        
        let btn = UIButton(imageName: "tabbar_compose_icon_add", backgroundImage: "tabbar_compose_button")
        btn.addTarget(self, action: #selector(MainViewController.composeButonClick), for: .touchUpInside)
        //4、设置frame
       
        return btn
    }()
    func composeButonClick(btn: UIButton){
        ZXLog(message: btn)
    }
    
    
}
//extension UIButton
//{
//      func createButton(imageName: String,backgroundImage: String) {
//       
//        setImage(UIImage.init(named: imageName), for: .normal)
//        setImage(UIImage.init(named: imageName + "_highlighted"), for: .highlighted)
//        setBackgroundImage(UIImage.init(named: backgroundImage), for: .normal)
//        setBackgroundImage(UIImage.init(named: backgroundImage + "_highlighted"), for: .highlighted)
//        sizeToFit()
//    }
//    
//}
