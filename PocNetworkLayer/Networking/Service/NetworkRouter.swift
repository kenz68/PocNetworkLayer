//
//  NetworkRouter.swift
//  PocNetworkLayer
//
//  Created by Quoc Le on 2/5/20.
//  Copyright © 2020 quocle. All rights reserved.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?, _ response: URLResponse?, _ error: Error?) -> ()

protocol NetworkRouter: class {
    associatedtype Enpoint: EndPointType
    func request(_ router: Enpoint, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
