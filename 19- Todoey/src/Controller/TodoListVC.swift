//
//  ViewController.swift
//  Todoey
//
//  Created by Philipp Muellauer on 02/12/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import CoreData

class TodoListVC: UITableViewController {
    
    var itemArray : [Item] = []
    
    //    let dataFilePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("Items.plist")
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //        let newItem1 = Item("Find Mike")
        //        let newItem2 = Item("Buy Eggos")
        //        let newItem3 = Item("Destroy Demogorgon")
        //        itemArray.append(newItem1)
        //        itemArray.append(newItem2)
        //        itemArray.append(newItem3)
        //
        //        if let items = UserDefaults.standard.array(forKey: "TodoListArray") as? [Item] {
        //            itemArray = items
        //        }
        
        loadItems()
    }
    
    func saveItems() {
        //        let encoder = PropertyListEncoder()
        //
        //        do {
        //            let data = try encoder.encode(itemArray)
        //            try data.write(to: dataFilePath!)
        //        } catch {
        //            print("Error encoding item array, \(error)")
        //        }
        do {
            try context.save()
        } catch  {
            print("Error saving context \(error)")
        }
    }
    
    func loadItems() {
        //        if let data = try? Data(contentsOf: dataFilePath!) {
        //            let decoder = PropertyListDecoder()
        //            do {
        //                itemArray = try decoder.decode([Item].self, from: data)
        //            } catch {
        //                print("Error decoding item array, \(error)")
        //            }
        //
        //        }
        let request : NSFetchRequest<Item> = Item.fetchRequest()
        do {
            itemArray = try context.fetch(request)
        } catch {
            print("Error fetching data from context \(error)")
        }
        
    }
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Add new Todoey Item", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add Item", style: .default) { action in
            if let title = textField.text {
                //                let newItem = Item(title)
                let newItem = Item(context: self.context)
                newItem.title = title
                self.itemArray.append(newItem)
                self.saveItems()
                self.tableView.reloadData()
            }
        }
        
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "Create new item"
            textField = alertTextField
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
}


// MARK: - Datasource Methods

extension TodoListVC {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        let item = itemArray[indexPath.row]
        
        cell.textLabel?.text = item.title
        
        cell.accessoryType = item.done ? .checkmark : .none
        
        return cell
    }
}


// MARK: - Delegate Methods

extension TodoListVC {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        print(indexPath.row)
        itemArray[indexPath.row].done = !itemArray[indexPath.row].done
        saveItems()
        
        tableView.reloadData()
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
}
