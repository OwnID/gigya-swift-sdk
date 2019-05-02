//
//  GigyaApiResultModel.swift
//  GigyaSwift
//
//  Created by Shmuel, Sagi on 20/03/2019.
//  Copyright © 2019 Gigya. All rights reserved.
//

import Foundation

public struct GigyaResponseModel: Codable {
    var statusCode: ApiStatusCode
    var errorCode: Int
    var callId: String
    let errorMessage: String?
    
    func toDictionary() -> [String: Any] {
        return ["statusCode": statusCode, "errorCode": errorCode, "callId": callId, "errorMessage": errorMessage ?? ""]
    }
    
    func asJson() -> String {
        return toDictionary().asJson
    }
}
