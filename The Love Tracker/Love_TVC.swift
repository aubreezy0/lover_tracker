//
//  Love_TVC.swift
//  The Love Tracker
//
//  Created by Aubree Lawrence on 10/15/19.
//  Copyright © 2019 Aubree Lawrence. All rights reserved.
//

import UIKit

class Love_TVC: UITableViewController {

    var allLoves : [Love] = []
    
    override func viewWillAppear(_ animated: Bool) {
        // call function
    }

    func getLoves() {
        // FETCH objects
    }
    
    @IBAction func loveTapped(_ sender: Any) {
        // ADD object
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // DELETE object
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return allLoves.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    

}
