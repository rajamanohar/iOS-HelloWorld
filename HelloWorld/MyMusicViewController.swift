//
//  MyMusicViewController.swift
//  HelloWorld
//
//  Created by Raja Mummidi on 10/30/16.
//  Copyright © 2016 Raja Mummidi. All rights reserved.
//

import UIKit

class MyMusicViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var Collection: UICollectionView!
    
    let origin = "yrdy"
    let identifier = "CellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.Collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CellIdentifier")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        
        return 800;
    }
    
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell:UICollectionViewCell = self.Collection.dequeueReusableCell(withReuseIdentifier: "CellIdentifier", for: indexPath)
        cell.backgroundColor = UIColor.red
        return cell
        
    }
    
    
    private func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
    {
        return 10;
    }
    
    // The view that is returned must be retrieved from a call to -dequeueReusableSupplementaryViewOfKind:withReuseIdentifier:forIndexPath:
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
//    {
//        
//        
//        
//    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
