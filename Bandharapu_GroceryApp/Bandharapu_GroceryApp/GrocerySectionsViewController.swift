//
//  ViewController.swift
//  Bandharapu_GroceryApp
//
//  Created by Bandharapu,Manish Goud on 4/5/22.
//

import UIKit

class GrocerySectionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grocery.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = grocerySectionsTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = grocery[indexPath.row].section
        return cell
    }
    
    var grocerya = Grocery()
    
    var grocery = grocerys

    @IBOutlet weak var grocerySectionsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Grocery Sections"
        // Do any additional setup after loading the view.
        grocerySectionsTableView.delegate = self
        grocerySectionsTableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "itemsSegue"{
            let destination = segue.destination as! GroceryItemsViewController
            destination.items = grocery[(grocerySectionsTableView.indexPathForSelectedRow?.row)!]
        }
    }


}

