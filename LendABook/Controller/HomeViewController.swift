//
//  HomeViewController.swift
//  LendABook
//
//  Created by Zayan Tharani on 24/08/2020.
//  Copyright © 2020 folio3. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

   
    @IBOutlet weak var bestSellerCollectionView: UICollectionView!

    @IBOutlet weak var genreCollectionView: UICollectionView!
    
    @IBOutlet weak var recentlyViewedCollectionView: UICollectionView!
    
    let bestSellerImages = ["theZoo", "tattletale", "inALandOfPaperGods", "theZoo", "tattletale", "inALandOfPaperGods", "theZoo", "tattletale", "inALandOfPaperGods"]
    let bestSellerBooks = ["The Zoo", "Tattle Tale", "In A Land of Paper Gods", "theZoo", "tattletale", "inALandOfPaperGods", "theZoo", "tattletale", "inALandOfrecentlyViewedCellPaperGods"]
    let bestSellerAuthorName = ["by Christopher Wilson", "by Rebecca Mackenzie", "by Sarah J. Noughton", "theZoo", "tattletale", "inALandOfPaperGods", "theZoo", "tattletale", "inALandOfPaperGods"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Our Top Picks"
        
        
        bestSellerCollectionView.delegate = self
        bestSellerCollectionView.dataSource = self
        genreCollectionView.delegate = self
        genreCollectionView.dataSource = self
        recentlyViewedCollectionView.dataSource = self
        recentlyViewedCollectionView.delegate = self
        
        bestSellerCollectionView.register(UINib(nibName: "BestSellerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: K.ReusableCells.bestSellerCell)
        genreCollectionView.register(UINib(nibName: "BestSellerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: K.ReusableCells.genreCell)
        recentlyViewedCollectionView.register(UINib(nibName: "BestSellerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: K.ReusableCells.recentlyViewedCell)
        
        
    }
    
    

}

//MARK: BestSellerExtensions
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bestSellerImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = bestSellerCollectionView.dequeueReusableCell(withReuseIdentifier: K.ReusableCells.bestSellerCell, for: indexPath) as! BestSellerCollectionViewCell
        cell.imageView.image = UIImage(named: bestSellerImages[indexPath.row])
        cell.bookName.text = bestSellerBooks[indexPath.row]
        cell.authorName.text = bestSellerAuthorName[indexPath.row]
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 122.5, height: 266)
    }
    
    
    
}

