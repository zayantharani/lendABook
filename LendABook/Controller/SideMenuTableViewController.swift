//
//  SideMenuTableViewController.swift
//  LendABook
//
//  Created by Zayan Tharani on 24/08/2020.
//  Copyright © 2020 folio3. All rights reserved.
//

import UIKit

class SideMenuTableViewController: UITableViewController {
    
    let sideMenuItems = ["Home", "Our Books", "Our Stores", "Careers", "Sell with Us"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sideMenuItems.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.ReusableCells.sideMenuCell, for: indexPath)

        cell.textLabel?.text = sideMenuItems[indexPath.row]
        return cell
    }
    

   

  
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
 
