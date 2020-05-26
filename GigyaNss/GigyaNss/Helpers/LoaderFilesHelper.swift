//
//  LoadHelper.swift
//  GigyaNss
//
//  Created by Shmuel, Sagi on 20/01/2020.
//  Copyright © 2020 Gigya. All rights reserved.
//

import Foundation
import Gigya

class LoaderFileHelper {
    func fileToDic(name: String) -> [String: Any] {
        guard let filePath = Bundle.main.url(forResource: name, withExtension: "json") else {
            GigyaLogger.error(with: LoaderFileHelper.self, message: "json file not found.")
        }

        do {
            let data = try Data(contentsOf: filePath, options: .mappedIfSafe)
            let decodedObject = try JSONSerialization.jsonObject(with: data) as? [String: AnyObject] ?? [:]

            return decodedObject
        } catch {
            // handle error
        }

        return [:]
    }
}
