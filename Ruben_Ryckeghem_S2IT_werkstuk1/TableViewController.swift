//
//  TableViewController.swift
//  Ruben_Ryckeghem_S2IT_werkstuk1
//
//  Created by Ruben Ryckeghem on 7/05/18.
//  Copyright © 2018 Ruben Ryckeghem. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController{
    
    var items = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item1 = Item(voornaam: "Ruben", achternaam:"Ryckeghem",straat:"Bombardonstraat",huisnummer:"221",gemeente:"Liedekerke",postcode:"1770",image: "ruben",latitude:50.863517, longitude:4.097565)
        let item2 = Item(voornaam: "David",achternaam:"Heremans",straat:"Marguerite Lefevrelaan",huisnummer:"7",gemeente:"Wilsele",postcode:"3012",image: "david",latitude:50.890284, longitude:4.703320)
        let item3 = Item(voornaam: "Jergo",achternaam:"Dion",straat:"Pastoriestraat",huisnummer:"62",gemeente:"Kapelle-op-den-Bos",postcode:"1880",image: "jergo",latitude:51.015388, longitude:4.357503)
        
        items.append(item1)
        items.append(item2)
        items.append(item3)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        // Configure the cell...
        
        cell.textLabel?.text = items[indexPath.row].voornaam
        cell.imageView?.image = UIImage(named: items[indexPath.row].image)
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "naarItemView"
        {
            let vc = segue.destination as! ItemViewController
            let indexPath = self.tableView.indexPathForSelectedRow
            vc.item = items[(indexPath?.row)!]
        }
    }
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
