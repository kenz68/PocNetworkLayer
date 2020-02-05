//
//  JSONParameterEncoder.swift
//  PocNetworkLayer
//
//  Created by Quoc Le on 2/5/20.
//  Copyright © 2020 quocle. All rights reserved.
//

import Foundation

public struct JSONParameterEncoder: ParameterEncoder {
    public static func encode(urlRequest: inout URLRequest, with parametes: Parameters) throws {
        do {
            let jsonAsData = try JSONSerialization.data(withJSONObject: parametes, options: .prettyPrinted)
            urlRequest.httpBody = jsonAsData
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }
        } catch {
            throw NetworkError.encodingFailed
        }
    }
}
