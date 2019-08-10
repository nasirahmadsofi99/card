//
//  ViewController.swift
//  Card
//
//  Created by Aqib Ali on 09/08/19.
//  Copyright © 2019 Aqib Ali. All rights reserved.
//

import UIKit

class BaseViewController:UIViewController {
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        switch UIDevice.current.orientation{
        case .portrait:
            print("POTRAIT")
        case .landscapeLeft,.landscapeRight:
            print("LANDSCAPE")
            let vc = CardViewController.instance
            vc.modalTransitionStyle = .crossDissolve
            vc.modalPresentationStyle = .overCurrentContext
            present(vc, animated: true)
        default:
            break
        }
    }
}


class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}


