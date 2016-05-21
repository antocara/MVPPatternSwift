//
//  RestManager.swift
//  mvpSwift
//
//  Created by Antonio Carabantes Millán on 20/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation
import Alamofire

enum RequestType {
    case SIGNIN
}

class RestManager: Alamofire.Manager{

    static let shareInstance = RestManager();

    init(){
        var configuration: NSURLSessionConfiguration;
        configuration = NSURLSessionConfiguration.defaultSessionConfiguration()

        //cache
        let cache = NSURLCache(memoryCapacity: 10 * 1024 * 1024,
                               diskCapacity: 50 * 1024 * 1024, diskPath: nil);
        configuration.URLCache = cache;
        configuration.requestCachePolicy = NSURLRequestCachePolicy.UseProtocolCachePolicy;
        configuration.timeoutIntervalForRequest = 20 // seconds
        configuration.timeoutIntervalForResource = 20

        super.init(configuration: configuration);
    }


    func createRequest(requestType: RequestType, endPoint: String, parameter: [String: String]){

        self.request(.POST, endPoint, parameters: parameter)
            .responseJSON {

                response in

                let statusCode = response.response?.statusCode;
                if (statusCode == 200){

                    let jsonResponse = response.result.value!;
                    self.mapperRequest(requestType, response: jsonResponse);

                }else{
                    //error
                    
                }
        }
        
    }


    func mapperRequest(requestType: RequestType, response: AnyObject){

    }


}
