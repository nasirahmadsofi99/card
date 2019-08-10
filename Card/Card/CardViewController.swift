//
//  CardViewController.swift
//  Card
//
//  Created by Aqib Ali on 09/08/19.
//  Copyright © 2019 Aqib Ali. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

    
    static let instance = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "CardViewController") as! CardViewController
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        switch UIDevice.current.orientation{
        case .portrait:
            print("POTRAIT")
            dismiss(animated: true)
        case .landscapeLeft,.landscapeRight:
            print("LANDSCAPE")
        default:
            break
        }
    }

}
