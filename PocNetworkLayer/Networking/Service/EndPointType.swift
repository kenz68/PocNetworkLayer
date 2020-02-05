//
//  EndPointType.swift
//  PocNetworkLayer
//
//  Created by Quoc Le on 2/5/20.
//  Copyright © 2020 quocle. All rights reserved.
//

import UIKit

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
