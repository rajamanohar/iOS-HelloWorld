//
//  PlayerViewController.swift
//  HelloWorld
//
//  Created by Raja Mummidi on 10/30/16.
//  Copyright © 2016 Raja Mummidi. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tbleSongsList: UITableView!
   
    var items: [String] = ["Song 1","Song 2","Song 3","Song 4","Song 5","Song 6","Song 7","Song 8","Song 9","Song 10",
                           "Song 11","Song 12","Song 13","Song 14","Song 15","Song 16","Song 17","Song 18","Song 19","Song 20"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tbleSongsList.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell:UITableViewCell = self.tbleSongsList.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = self.items[indexPath.row]
        cell.detailTextLabel?.text = "Singer 1, Singer 2, Singer 3"
        
        return cell;
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return self.items.count
    }
    
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        let alert:UIAlertController = UIAlertController(title: "Settings", message: "\(self.items[indexPath.row]) selected", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
