//
//  ViewController.swift
//  swifty-companion
//
//  Created by Mpho KGOSISEJO on 2018/10/15.
//  Copyright © 2018 Mpho KGOSISEJO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var _txtSearch: UITextField!
    @IBOutlet weak var _btnSearch: UIButton!
    @IBOutlet weak var _lblInfo: UILabel!
    var _api: APIController!
    var _getTokenCount: Int = 1
    var _alert: Alert!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Running...\n")
        self.title = "42"
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "port-42-min")!)
        
        self._api = APIController()
        self._alert = Alert(vc: self)
        self.setToken()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSearchClick(_ sender: UIButton) {
        var user = self._txtSearch.text!
        self.setTextColor(color: Colors42.LightGray)
        
        if user.count > 0 {
            user = user.lowercased()
            self.setButtenSearch(isClicked: true)
            self._api.searchUser(user: user, with: {data in
                let user = self.processUserData(data: data)

//                print("User: ", user)
                if user.id != nil {
                    if let detailScreen: DetailScreenViewController = self.storyboard?.instantiateViewController(withIdentifier: "detailScreen") as? DetailScreenViewController {
                        self.navigationController?.pushViewController(detailScreen, animated: true)

                        detailScreen._userData = user
                    }
                    self._txtSearch.text = ""
                } else {
                    self._alert.showDefaultAlert(title: Messages.USER_NOT_FOUND.0, mssg: Messages.USER_NOT_FOUND.1)
                }
                self.setButtenSearch(isClicked: false)
            }, with: {error in
                print("[btnSearch(-1)] => \(error.localizedDescription)")
                self._alert.showDefaultAlert(title: Messages.UNEXPECTED_ERROR.0, mssg: error.localizedDescription)
                self.setButtenSearch(isClicked: false)
                
                print("[btnSearch(-3)] => Try Get New Token....")
                self.setToken()
            })
        }else{
            self._alert.showDefaultAlert(title: Messages.INPUT_REQUIRED.0, mssg: "\"User-login\" \(Messages.INPUT_REQUIRED.1)")
            self.setTextColor(color: Colors42.LightRed)
            print("[btnSearch(-2)] => \(Messages.INPUT_REQUIRED.0): \(Messages.INPUT_REQUIRED.1)")
        }
    }
    
    private func setTextColor(color: UIColor){
        self._txtSearch.layer.borderWidth = 1
        self._txtSearch.layer.borderColor = color.cgColor
    }
    
    private func setButtenSearch(isClicked: Bool){
        if isClicked {
            self._btnSearch.setTitle("Searching...", for: UIControlState.normal)
            self._btnSearch.isEnabled = false
        } else {
            self._btnSearch.setTitle("Search", for: UIControlState.normal)
            self._btnSearch.isEnabled = true
        }
    }
    
    private func setup(isSetupDone: Bool){
        if isSetupDone {
            self._btnSearch.setTitle("Search", for: UIControlState.normal)
            self._lblInfo.text = "by: github.com/Mpho-Kgosisejo"
        } else {
            self._btnSearch.setTitle("loading...", for: UIControlState.normal)
            self._lblInfo.text = "Setup loading..."
        }
    }
    
    private func setToken(){
        self.setup(isSetupDone: false)
        self._btnSearch.isEnabled = false
        self.setTextColor(color: Colors42.LightGray)
        
        self._api.connect(with: { data in
            do {
                let tokenData: Token = try JSONDecoder().decode(Token.self, from: data)
                
                if tokenData.access_token != nil {
                    APIController.TOKEN = tokenData.access_token!
                    self._btnSearch.isEnabled = true
                    print("[TOKEN SET] => \(APIController.TOKEN)")
                } else {
                    print("[setToken(0)] Error Setting Token => (\(self._getTokenCount)/\(APIController.TRY_GET_TOKEN))")
                    if self._getTokenCount < APIController.TRY_GET_TOKEN {
                        self.setToken()
                        self._getTokenCount += 1
                    } else {
                        self._alert.showDefaultAlert(title: Messages.UNEXPECTED_ERROR.0, mssg: "Please try again later... 😢")
                        print("[setToken(1)] => \(Messages.UNEXPECTED_ERROR.0)")
                    }
                }
                self.setup(isSetupDone: true)
            } catch (let error) {
                print("[setToken(-1)] => \(error.localizedDescription)")
                self.setup(isSetupDone: true)
            }
        }, with: { error in
            print("[setToken(-2)] => \(error.localizedDescription)")
            self.setup(isSetupDone: true)
        })
    }
    
    private func processUserData(data: Data) -> User{
        var user: User! = nil
        
        do {
            user = try JSONDecoder().decode(User.self, from: data)
            
            print("[processUserData(-1)] => \(Messages.UNEXPECTED_ERROR.1)")
        }catch (let error){
            print("[processUserData(-2)] => \(error.localizedDescription)")
        }
        return (user)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("ViewController.prepare(...)")
    }
}

