//
//  PKHUDToastView.swift
//  PKHUD
//
//  Created by Alejandro Moya on 7/27/18.
//  Copyright © 2018 NSExceptional. All rights reserved.
//

import Foundation

open class PKHUDToastView: PKHUDTextView {

    override func commonInit(_ text: String?) {
        self.frame = CGRect(origin: .zero, size: CGSize(width: UIScreen.main.bounds.width - 30, height: 60))
        super.commonInit(text)
    }
}
