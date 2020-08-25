//
//  CustomButton.swift
//  LendABook
//
//  Created by Zayan Tharani on 21/08/2020.
//  Copyright © 2020 folio3. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

}
