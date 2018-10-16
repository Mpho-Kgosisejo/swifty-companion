//
//  APIController.swift
//  swifty-companion
//
//  Created by Mpho KGOSISEJO on 2018/10/15.
//  Copyright © 2018 Mpho KGOSISEJO. All rights reserved.
//

import Foundation
import UIKit

class APIController: Any {
    public static var TOKEN: String = ""
    public static let TRY_GET_TOKEN: Int = 5
    private static var static_error: String = ""
    
    private func getCodeRequest() -> NSMutableURLRequest {
        let url: URL = URL(string: "\(API.EndPoint)/oauth/token")!
        let request: NSMutableURLRequest = NSMutableURLRequest(url: url)
        var grant = ""
        
        grant = "grant_type=client_credentials"
        grant += "&client_id=\(API.UID)"
        grant += "&client_secret=\(API.SECRET)"
        request.httpMethod = "POST"
        request.httpBody = grant.data(using: String.Encoding.utf8)
        return(request)
    }
    
    func searchUser(user: String, with successCallBack: @escaping (Data) -> (), with errorCallBack: @escaping (Error) -> ()) {
        let url: URL = URL(string: "\(API.EndPoint)/v2/users/\(user)?access_token=\(APIController.TOKEN)")!
        let request: NSMutableURLRequest = NSMutableURLRequest(url: url)
        
        request.httpMethod = "GET"
        
        self.request(req: request, with: successCallBack, with: errorCallBack)
    }
    
    func connect(with successCallBack: @escaping (Data) -> (), with errorCallBack: @escaping (Error) -> ()) {
        self.request(req: self.getCodeRequest(), with: successCallBack, with: errorCallBack)
    }
    
    private func request(req: NSMutableURLRequest, with successCallBack: @escaping (Data) -> (Void), with errorCallBack: @escaping (Error) -> (Void)){
        let task = URLSession.shared.dataTask(with: req as URLRequest){
            (data, response, error) in
            if let err = error{
                DispatchQueue.main.async {
                    UIApplication.shared.isNetworkActivityIndicatorVisible = false
                    errorCallBack(err)
                }
            }
            else if let d = data{
                DispatchQueue.main.async {
                    // print("Response: ", response ?? "no-response")
                    UIApplication.shared.isNetworkActivityIndicatorVisible = false
                    successCallBack(d)
                }
            }
        }
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        task.resume()
    }
    
    public static func getDictionary(data: Data) -> NSDictionary {
        var dic: NSDictionary = NSDictionary()
        
        do {
            dic = (try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as? NSDictionary)!
        }
        catch(let err){
            static_error = err.localizedDescription
        }
        return (dic)
    }
    
    public static func GetError() -> String {
        let error = static_error
        static_error = ""
        return (error)
    }
}
