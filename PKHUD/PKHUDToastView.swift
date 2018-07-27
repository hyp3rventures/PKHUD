//
//  PKHUDToastView.swift
//  PKHUD
//
//  Created by Alejandro Moya on 7/27/18.
//  Copyright © 2018 NSExceptional. All rights reserved.
//

import Foundation

class PKHUDToastView: PKHUDWideBaseView {

    open let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 17.0)
        label.textColor = UIColor.black.withAlphaComponent(0.85)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.25
        return label
    }()

    convenience init(title: String?) {
        self.init()
        self.titleLabel.text = title
    }

    override init() {
        super.init(frame: CGRect(origin: .zero, size: CGSize(width: UIScreen.main.bounds.width - 50, height: 60)))
        self.addSubview(self.titleLabel)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    open override func layoutSubviews() {
        super.layoutSubviews()

        let padding: CGFloat = 10.0
        titleLabel.frame = bounds.insetBy(dx: padding, dy: padding)
    }
}
