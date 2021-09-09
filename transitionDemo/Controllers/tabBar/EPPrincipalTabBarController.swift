//
//  EPPrincipalTabBarController.swift
//  transitionDemo
//
//  Created by bobo on 2021/9/9.
//

import UIKit

class EPPrincipalTabBarController: EPTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addSubController(vc: EPHomeViewController(), imgName: "home", title: "home")
        addSubController(vc: EPMiddleViewController(), imgName: "middle", title: "middle")
        addSubController(vc: EPMineViewController(), imgName: "mine", title: "mine")
    }
     

}
