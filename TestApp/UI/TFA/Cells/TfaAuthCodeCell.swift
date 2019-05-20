//
//  TwoFactorAuthenticationAuthCodeCell.swift
//  TestApp
//
//  Created by Tal Mirmelshtein on 19/05/2019.
//  Copyright © 2019 Gigya. All rights reserved.
//

import Foundation
import GigyaSwift

class TfaAuthCodeCell: UITableViewCell {
    
    var delegate: SubmitionProtocl?
    
    var mode: TFAMode = .registration
    var provider: TFAProvider = .gigyaPhone
    
    @IBOutlet weak var authCodeTextField: UITextField!
    
    @IBAction func authCodeSubmit(_ sender: Any) {
        guard let authCode = authCodeTextField.text else { return }
        switch mode {
        case .registration:
            delegate?.onSubmittedAuthCode(mode: .registration, provider: self.provider, code: authCode)
        case .verification:
            delegate?.onSubmittedAuthCode(mode: .verification, provider: self.provider, code: authCode)
        }
    }
}
