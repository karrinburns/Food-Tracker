//
//  MoodTableViewController.swift
//  Food Tracker
//
//  Created by BurnsK on 11/29/17.
//  Copyright © 2017 BurnsK. All rights reserved.
//

import UIKit

class MoodTableViewController: UITableViewController {

    //MARK: Properties
    
    var moods = [Mood]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the sample data.
        loadSampleMoods()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    //MARK: Private Methods
    
    private func loadSampleMoods() {
        
        let photo1 = UIImage(named: "mood1")
        let photo2 = UIImage(named: "mood2")
        let photo3 = UIImage(named: "mood3")
        let photo4 = UIImage(named: "mood4")
        let photo5 = UIImage(named: "mood5")
        
        guard let mood1 = Mood(name: "Caprese Salad", photo: photo1, rating: 4) else {
            fatalError("Unable to instantiate mood1")
        }
        
        guard let mood2 = Mood(name: "Chicken and Potatoes", photo: photo2, rating: 5) else {
            fatalError("Unable to instantiate moodl2")
        }
        
        guard let mood3 = Mood(name: "Pasta with Meatballs", photo: photo3, rating: 3) else {
            fatalError("Unable to instantiate mood3")
        }
        guard let mood4 = Mood(name: "Chicken and Potatoes", photo: photo4, rating: 5) else {
            fatalError("Unable to instantiate mood4")
        }
        
        guard let mood5 = Mood(name: "Pasta with Meatballs", photo: photo5, rating: 3) else {
            fatalError("Unable to instantiate mood5")
    }
    
        moods += [mood1, mood2, mood3, mood4, mood5]
        
}
}
