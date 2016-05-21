//
//  RestConfig.swift
//  mvpSwift
//
//  Created by Antonio Carabantes Millán on 20/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation


struct RestConfig {

    static let URL_BASE = "https://login-mvp-swift.firebaseio.com/";

    
    //MARK: - END POINTS -
    static var END_POINT_SIGNIN: String {
        return URL_BASE + "login"
    }


}