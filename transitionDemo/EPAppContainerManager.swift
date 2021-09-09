//
//  EPAppContainerManager.swift
//  transitionDemo
//
//  Created by bobo on 2021/9/9.
//

import UIKit

class EPAppContainerManager: NSObject {

    static let shared = EPAppContainerManager.init()
    var currentVC: UIViewController?
    
    lazy var principalTabBarController: EPPrincipalTabBarController = {
        let vc = EPPrincipalTabBarController()
        
        return vc
    }()
    
    lazy var agentTabBarController: EPAgentTabBarController = {
        let vc = EPAgentTabBarController()
        
        return vc
    }()
    
    func transitionContainer() {
        guard let window = UIApplication.shared.delegate?.window as? UIWindow else {
            return
        }
        var targetVC: EPTabBarController?
        if currentVC?.isEqual(principalTabBarController) != false{
            targetVC = agentTabBarController
        }else {
            targetVC = principalTabBarController
        }
        UIView.transition(with: window, duration: 0.5, options: [.curveEaseOut, .transitionFlipFromLeft]) {
            window.rootViewController = targetVC
        } completion: { (finished) in
            self.currentVC = targetVC
        }
    }
    
}
