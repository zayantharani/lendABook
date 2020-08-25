//
//  SearchScreenCollectionViewCell.swift
//  LendABook
//
//  Created by Zayan Tharani on 25/08/2020.
//  Copyright © 2020 folio3. All rights reserved.
//

import UIKit

class SearchScreenCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var containerView: UIView! {
        didSet {
            containerView.layer.cornerRadius = 15
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
