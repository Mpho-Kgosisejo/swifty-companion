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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        let image: UIImage? = nil
        var data: Data? = nil
        
        print("image: ", imageUrl)
        let imageUrl2 = URL(string: "https://cdn.intra.42.fr/users/mkgosise.png")
        DispatchQueue.global(qos: .background).async{
            do {
                data = try Data(contentsOf: imageUrl2!)
                
                if data != nil {
                    DispatchQueue.main.async {
                        self._imageView.image = UIImage(data: data!)
                    }
                }
            } catch let error {
                print("Error setting image... \(error.localizedDescription)")
            }
        }
        self._imageView.image = image
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
