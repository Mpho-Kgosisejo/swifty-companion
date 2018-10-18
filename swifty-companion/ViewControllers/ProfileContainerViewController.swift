//
//  ProfileContainerViewController.swift
//  swifty-companion
//
//  Created by Mpho KGOSISEJO on 2018/10/16.
//  Copyright © 2018 Mpho KGOSISEJO. All rights reserved.
//

import UIKit

class ProfileContainerViewController: UIViewController {
    @IBOutlet weak var _fullname: UILabel!
    @IBOutlet weak var _email: UILabel!
    @IBOutlet weak var _wallet: UILabel!
    @IBOutlet weak var _correctionPoinst: UILabel!
    @IBOutlet weak var _level: UILabel!
    @IBOutlet weak var _progressBar: UIProgressView!
    @IBOutlet weak var _imageView: UIImageView!
    @IBOutlet weak var _role: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color: UIColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)
        self._imageView.layer.borderWidth = 2
        self._imageView.layer.masksToBounds = false
        self._imageView.layer.borderColor = color.cgColor
        self._imageView.layer.cornerRadius = (self._imageView.frame.height / 2)
        self._imageView.clipsToBounds = true
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "landscape-42-min")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setRole(isStaff: Bool) {
        if isStaff {
            self._role.backgroundColor = Colors42.LightRed
            self._role.text = "Staff"
        } else {
            self._role.backgroundColor = Colors42.LightGreen
            self._role.text = "Student"
        }
    }
    
    func setFullName(name: String) {
        self._fullname.text = name
    }

    func setEmail(email: String) {
        self._email.text = email
    }

    func setWallet(wallet: String) {
        self._wallet.text = "Wallet: \(wallet)"
    }

    func setCorrectionPoints(points: String) {
        self._correctionPoinst.text = "Correction Points: \(points)"
    }

    func setLevel(level: String) {
        let levelSplit = level.split(separator: ".")
        
        self._level.text = "level \(levelSplit.first ?? "0") - \(levelSplit.last ?? "0")%"
        self.setProgressBar(progress: Float("0.\(levelSplit.last ?? "0")")!)
    }
    
    func setImage(imageUrl: URL) {
        let url = URL(string: "https://cdn.intra.42.fr/users/medium_\(imageUrl.lastPathComponent)")
        let activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
        
        activityIndicator.center = self._imageView.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        self._imageView.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        
        APIController.processImage(url: url!, with: {
            image in
            activityIndicator.stopAnimating()
            self._imageView.image = image
        }, with: {
            errorStr in
            activityIndicator.stopAnimating()
            print("[setImage()] => \(errorStr)")
        })
    }
    
    private func setProgressBar(progress: Float){
        self._progressBar.setProgress(progress, animated: true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
