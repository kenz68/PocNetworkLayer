//
//  ParameterEncoder.swift
//  PocNetworkLayer
//
//  Created by Quoc Le on 2/5/20.
//  Copyright © 2020 quocle. All rights reserved.
//

import Foundation

public typealias Parameters = [String: Any]

public protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest, with parametes: Parameters) throws
}
