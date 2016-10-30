//
//  SettingsViewController.swift
//  HelloWorld
//
//  Created by Raja Mummidi on 10/30/16.
//  Copyright © 2016 Raja Mummidi. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tbleSettings: UITableView!
    
    var items: [String] = ["Test 1","Test 2","Test 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tbleSettings.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
    let cell:UITableViewCell = self.tbleSettings.dequeueReusableCell(withIdentifier: "cell")!
    cell.textLabel?.text = self.items[indexPath.row]
    
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
