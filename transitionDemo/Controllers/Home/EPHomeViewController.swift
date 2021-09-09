//
//  EPHomeViewController.swift
//  transitionDemo
//
//  Created by bobo on 2021/9/9.
//

import UIKit

class EPHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

        let switchBtn = UIButton.init(type: .custom)
        switchBtn.frame = .init(x: 0, y: 0, width: 30, height: 30)
        switchBtn.setTitle("切换", for: .normal)
        switchBtn.setTitleColor(.black, for: .normal)
        switchBtn.addTarget(self, action: #selector(tapForSwitch), for: .touchUpInside)
        let rightBarItem = UIBarButtonItem.init(customView: switchBtn)
        navigationItem.rightBarButtonItem = rightBarItem
    }
    
    @objc
    private
    func tapForSwitch() {
        EPAppContainerManager.shared.transitionContainer()
    }

}
