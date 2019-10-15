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
        getLoves()
    }

    func getLoves() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            tableView.reloadData()
        }
    }
    
    @IBAction func loveTapped(_ sender: Any) {
        // ADD object
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
        getLoves()
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedLove = allLoves[indexPath.row]
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            context.delete(selectedLove)
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
            getLoves()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return allLoves.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()

        let selectedLove = allLoves[indexPath.row]
        cell.textLabel?.text = selectedLove.name

        return cell
    }
    

}
