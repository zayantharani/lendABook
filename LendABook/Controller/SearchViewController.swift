//
//  SearchViewController.swift
//  LendABook
//
//  Created by Zayan Tharani on 25/08/2020.
//  Copyright © 2020 folio3. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var headersCollectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchScreenCollectionView: UICollectionView!
    
    let headers = ["Genre", "Fiction", "Non-Fiction", "Adventure", "Romantic", "Plays", "Genre", "Fiction", "Non-Fiction"]
    var headerSelectedIndex = 0

    let bestSellerImages = ["1", "2", "3", "1", "2", "3","1", "2", "3"]
    let bestSellerBooks = ["The Zoo", "Tattle Tale", "In A Land of Paper Gods", "theZoo", "tattletale", "inALandOfPaperGods", "theZoo", "tattletale", "inALandOfrecentlyViewedCellPaperGods"]
    let bestSellerAuthorName = ["by Christopher Wilson", "by Rebecca Mackenzie", "by Sarah J. Noughton", "theZoo", "tattletale", "inALandOfPaperGods", "theZoo", "tattletale", "inALandOfPaperGods"]
    let colours = [UIColor.red, UIColor.blue, UIColor.orange, UIColor.red, UIColor.blue, UIColor.orange, UIColor.red, UIColor.blue, UIColor.orange]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.isHidden = true
        
        title = "Search Books"

        tableView.delegate = self
        tableView.dataSource = self
        headersCollectionView.delegate = self
        headersCollectionView.dataSource = self
        searchScreenCollectionView.delegate = self
        searchScreenCollectionView.dataSource = self
        
        headersCollectionView.accessibilityIdentifier = "HeaderCV"
        searchScreenCollectionView.accessibilityIdentifier = "SearchScreenCV"
        
        tableView.register(UINib(nibName: "SearchScreenTableViewCell", bundle: nil), forCellReuseIdentifier: K.ReusableCells.searchTableViewCell)
        
        searchScreenCollectionView.register(UINib(nibName: "SearchScreenCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: K.ReusableCells.searchScreenCollectionViewCell)
     
    }
    

    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        print("Cancel presed")
        searchBar.endEditing(true)
    }

}

//MARK: TableViewExtensions

extension SearchViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bestSellerBooks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.ReusableCells.searchTableViewCell, for: indexPath) as! SearchScreenTableViewCell
        
        cell.bookImageView.image = UIImage(named: bestSellerImages[row])
        cell.bookName.text = bestSellerBooks[row]
        cell.writerName.text = bestSellerAuthorName[row]
        cell.descriptionLabel.text = "Lorem Ipsum"
        cell.ratingView.rating = 2.3
        
        return cell
    }
    
}


//MARK: SearchBarExtensions


extension SearchViewController: UISearchBarDelegate {
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        print("I am called")
        headersCollectionView.isHidden = true
        tableView.isHidden = false
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        print("Helllo")
        headersCollectionView.isHidden = true
        searchScreenCollectionView.isHidden = true
    }
}

//MARK: HeaderCollectionView

extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if (collectionView.accessibilityIdentifier == "HeaderCV"){
            return headers.count
        } else {
            return bestSellerBooks.count

        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (collectionView.accessibilityIdentifier == "HeaderCV"){
            
            let cell = headersCollectionView.dequeueReusableCell(withReuseIdentifier: K.ReusableCells.searchHeadersCell, for: indexPath) as! SearchHeadersCollectionViewCell
            if headerSelectedIndex == indexPath.row {
                cell.headerLabel.textColor = .black
            } else {
                cell.headerLabel.textColor = .gray
            }
            cell.headerLabel.text = headers[indexPath.row]
            return cell
        } else {
            let cell = searchScreenCollectionView.dequeueReusableCell(withReuseIdentifier: K.ReusableCells.searchScreenCollectionViewCell, for: indexPath) as! SearchScreenCollectionViewCell
            cell.containerView.backgroundColor = colours[indexPath.row]
            cell.imageView.image = UIImage(named: bestSellerImages[indexPath.row])
            cell.textLabel.text = headers[indexPath.row]
            
            return cell
            
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        headerSelectedIndex = indexPath.row
        collectionView.reloadData()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 158, height: 202)
    }
    
}


