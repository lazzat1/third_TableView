//
//  TableViewController.swift
//  TableViewHomeWork
//
//  Created by Lazzat on 26.07.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var arrayMovie = [Movie(name: "Avatar:The Way of water ", year: 2022, score: 7.8, imagename: "Avatar", overview: "Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Na'vi race to protect their home.", imagesecond: "avatar 2"), Movie(name: "Barbie", year: 2023, score: 7.4, imagename: "Barbie", overview: "Barbie is kicked out of Barbieland because she doesn't meet his beauty standards. Then she begins a new life in the real world, where she discovers that perfection can only be achieved through inner harmony.", imagesecond: "barbie 2"), Movie(name: "Avengers,Endgame", year: 2019, score: 7.8, imagename: "Avengers", overview: "The surviving members of the Avengers team and their allies must develop a new plan that will help counter the destructive actions of the mighty titan Thanos. After the biggest and most tragic battle in history, they can't make a mistake.", imagesecond: "avengers 2")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }

    @IBAction func addMovie(_ sender: Any) {
        arrayMovie.append(Movie(name: "Name", year: 0, score: 0.0 , imagename: "image", overview: "overview"))
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayMovie.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = arrayMovie[indexPath.row].name
        
        let labelYear = cell.viewWithTag(1001) as! UILabel
        labelYear.text = String(arrayMovie[indexPath.row].year)
        
        let labelScore = cell.viewWithTag(1002) as! UILabel
        labelScore.text = String(arrayMovie[indexPath.row].score)
        
        let imageview = cell.viewWithTag(1003) as! UIImageView
        imageview.image = UIImage(named: arrayMovie[indexPath.row].imagename)
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 81
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
        
        detailVc.movie = arrayMovie[indexPath.row]
        
        
        navigationController?.show(detailVc, sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            arrayMovie.remove(at: indexPath.row)
            
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
