//
//  Love_TVC.swift
//  The Love Tracker
//
//  Created by Aubree Lawrence on 10/15/19.
//  Copyright © 2019 Aubree Lawrence. All rights reserved.
//

import UIKit

class Love_TVC: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        // call function
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    

}
