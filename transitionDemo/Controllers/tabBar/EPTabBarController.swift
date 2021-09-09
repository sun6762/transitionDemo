//
//  EPTabBarController.swift
//  transitionDemo
//
//  Created by bobo on 2021/9/9.
//

import UIKit

class EPTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func addSubController(vc: UIViewController, imgName: String, title: String) -> () {
        let ctrl:UINavigationController?
        ctrl = UINavigationController.init(rootViewController: vc)
        
        ctrl?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17)]
        ctrl?.title = title
        ctrl?.tabBarItem.image = UIImage.init(named: imgName)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        let selectedImg = UIImage.init(named:String(format: "%@_selected", imgName))?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        ctrl?.tabBarItem.selectedImage = selectedImg
//        ctrl?.tabBarItem.imageInsets = UIEdgeInsets(top: 7, left: 0, bottom: -7, right: 0)
        self.addChild(ctrl!)
    }
    
    
}
