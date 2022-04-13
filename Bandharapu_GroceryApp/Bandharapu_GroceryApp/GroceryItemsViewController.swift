//
//  GroceryItemsViewController.swift
//  Bandharapu_GroceryApp
//
//  Created by Bandharapu,Manish Goud on 4/5/22.
//

import UIKit

class GroceryItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grocery.count
    }
    
    var items : Grocery?

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = groceryItemsTableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        cell.textLabel?.text = items!.items_Array[indexPath.row].itemName
        return cell
    
    }
            var grocerya = GroceryItem()

                var grocery = grocerys

    
    
    @IBOutlet weak var groceryItemsTableView: UITableView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = items?.section
        groceryItemsTableView.delegate = self
        groceryItemsTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let transition = segue.identifier
           if transition == "itemInfoSegue"{
               let destination = segue.destination as! ItemInfoViewController
               destination.details = items!.items_Array[(groceryItemsTableView.indexPathForSelectedRow?.row)!]
    
           }
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


