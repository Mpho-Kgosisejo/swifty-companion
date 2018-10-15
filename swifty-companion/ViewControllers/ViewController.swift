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
        /* // goto: DetailScreenViewController()
        if let DetailScreen: DetailScreenViewController = self.storyboard?.instantiateViewController(withIdentifier: "detailScreen") as? DetailScreenViewController {
            self.navigationController?.pushViewController(DetailScreen, animated: true)
        }
        */
        let user = self._txtSearch.text!
        
        if user.count > 0 {
            api.searchUser(user: user, with: {data in
                let dic: NSDictionary = APIController.getDictionary(data: data)
                print("Ok: ", dic)
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
                print("TOKEN SET")
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare(...)")
    }
}

