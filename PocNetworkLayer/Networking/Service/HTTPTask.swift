//
//  HTTPTask.swift
//  PocNetworkLayer
//
//  Created by Quoc Le on 2/5/20.
//  Copyright © 2020 quocle. All rights reserved.
//

import UIKit

public typealias HTTPHeaders = [String: String]
public enum HTTPTask {
    case request
    
    case requestParameters(bodyParameters: Parameters?,
        urlParameters: Parameters?)
    
    case requestParamatersAndHeaders(bodyParameters: Parameters?,
        urlParameters: Parameters?,
        additionHeaders: HTTPHeaders?)
    
    // case download, upload...etc
}
