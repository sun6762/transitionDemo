//
//  EPAgentTabBarController.swift
//  transitionDemo
//
//  Created by bobo on 2021/9/9.
//

import UIKit

class EPAgentTabBarController: EPTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubController(vc: EPHomeViewController(), imgName: "home", title: "home")
        addSubController(vc: EPMineViewController(), imgName: "mine", title: "mine")
    }
     

}
