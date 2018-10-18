//
//  Alerts.swift
//  swifty-companion
//
//  Created by Mpho KGOSISEJO on 2018/10/17.
//  Copyright © 2018 Mpho KGOSISEJO. All rights reserved.
//

import Foundation
import UIKit

class Alert: Any {
    private let _viewController: UIViewController!
    
    init(vc: UIViewController) {
        self._viewController = vc
    }
    
    func showDefaultAlert(title: String, mssg: String) {
        let alert = UIAlertController(title: title, message: mssg, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {
            ACTION in alert.dismiss(animated: true, completion: nil)
        }))
        self._viewController.present(alert, animated: true, completion: nil)
    }
}
