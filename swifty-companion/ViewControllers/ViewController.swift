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
    var api: APIController!
    var getTokenCount: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Running...\n")
        
        self.api = APIController()
        self.setToken()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSearch(_ sender: UIButton) {
        let user = self._txtSearch.text!
        
        if user.count > 0 {
            api.searchUser(user: user, with: {data in
                let dic: NSDictionary = APIController.getDictionary(data: data)

                if dic.count > 0 {
                    self.processUserData(data: data)
                } else {
                    print("Search error: no username such as \"\(user)\"")
                }
            }, with: {error in
                print("Error")
            })
        }else{
            print("search test required!")
        }
    }
    
    private func setToken(){
        self.api.connect(with: { data in
            let dic = APIController.getDictionary(data: data)
            
            if let token: String = dic.value(forKey: "access_token") as? String {
                APIController.TOKEN = token
                print("[TOKEN SET] => \(APIController.TOKEN)")
            }else{
                print("Error getting token (\(self.getTokenCount)/\(APIController.TRY_GET_TOKEN))")
                if self.getTokenCount < APIController.TRY_GET_TOKEN {
                    self.setToken()
                    self.getTokenCount += 1
                } else {
                    print("Can't get token... exit program")
                }
            }
        }, with: { error in
            print("Error")
        })
    }
    
    private func processUserData(data: Data){
        do {
            let json: String = String(bytes: data, encoding: .utf8) ?? "{}"
            let jsonData = json.data(using: .utf8)!
            
//            print("\n\nJSON: ", json, "\n\n")
            let userData: User = try JSONDecoder().decode(User.self, from: jsonData)
            
            if let detailScreen: DetailScreenViewController = self.storyboard?.instantiateViewController(withIdentifier: "detailScreen") as? DetailScreenViewController {
                self.navigationController?.pushViewController(detailScreen, animated: true)
                
                detailScreen._userData = userData
                return
            }
            
            print("[processUserData()] Something went wrong!")
        }catch (let error){
            print("Error processUserData(): \(error.localizedDescription)")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("ViewController.prepare(...)")
    }
}

