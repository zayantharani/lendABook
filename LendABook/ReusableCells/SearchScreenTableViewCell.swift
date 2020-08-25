//
//  SearchScreenTableViewCell.swift
//  LendABook
//
//  Created by Zayan Tharani on 25/08/2020.
//  Copyright © 2020 folio3. All rights reserved.
//

import UIKit
import Cosmos

class SearchScreenTableViewCell: UITableViewCell {

    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookName: UILabel!
    @IBOutlet weak var writerName: UILabel!
    @IBOutlet weak var ratingView: CosmosView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func addToCartPressed(_ sender: CustomButton) {
    }
    
    @IBAction func addToWishlistPressed(_ sender: CustomButton) {
    }
}
