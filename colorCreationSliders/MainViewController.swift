//
//  MainViewController.swift
//  colorCreationSliders
//
//  Created by Александр Захлыпа on 12.04.2023.
//

import UIKit

protocol SettingViewControllerdelegate {
    func sentColor(color: UIColor)
    
}

final class MainViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        
        settingVC.colorDelegate = self
        settingVC.backgroundColorDelegate = view.backgroundColor
        
    }

}

extension MainViewController: SettingViewControllerdelegate {
    func sentColor(color: UIColor) {
        view.backgroundColor = color
    }
}
