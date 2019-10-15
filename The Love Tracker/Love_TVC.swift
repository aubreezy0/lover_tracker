//
//  Love_TVC.swift
//  The Love Tracker
//
//  Created by Aubree Lawrence on 10/15/19.
//  Copyright © 2019 Aubree Lawrence. All rights reserved.
//

import UIKit

class Love_TVC: UITableViewController {

    // hold Love objects
    var allLoves : [Love] = []
    
    override func viewWillAppear(_ animated: Bool) {
        getLoves()
    }

    // fetch love objects from core data
    func getLoves() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let loves = try? context.fetch(Love.fetchRequest()) {
                if let theLove = loves as? [Love] {
                    allLoves = theLove
                    tableView.reloadData()
                }
            }
        }
    }
    
    // add love objects to coredata on tap
    @IBAction func loveTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let love = Love(context:context)
            love.name = "❤️ You are Loved! ❤️"
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
        getLoves()
        }
    }
    
    // delete love objects from core data, sad face
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
