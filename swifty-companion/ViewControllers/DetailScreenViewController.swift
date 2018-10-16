//
//  DetailScreenViewController.swift
//  swifty-companion
//
//  Created by Mpho KGOSISEJO on 2018/10/15.
//  Copyright © 2018 Mpho KGOSISEJO. All rights reserved.
//

import UIKit

class DetailScreenViewController: UIViewController {
    public var _userData: User!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "\(self._userData.login!)'s Profile"
        
        if let profileContainer: ProfileContainerViewController = self.childViewControllers.last as? ProfileContainerViewController{
            profileContainer.setFullName(name: self._userData.displayname!)
            profileContainer.setEmail(email: self._userData.email!)
            profileContainer.setWallet(wallet: String(self._userData.wallet!))
            profileContainer.setCorrectionPoints(points: String(self._userData.correction_point!))
            profileContainer.setImage(imageUrl: self._userData.image_url!)
            if let cu = self._userData.cursus_users?.first {
                profileContainer.setLevel(level: String(format: "%.2f", cu.level!))
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("DetailScreenViewController.prepare(...)")
    }

    
}
