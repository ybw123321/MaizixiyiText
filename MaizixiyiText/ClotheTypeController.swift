//
//  ClotheTypeController.swift
//  MaizixiyiText
//
//  Created by ybw123321 on 16/2/18.
//  Copyright © 2016年 ybw123321. All rights reserved.
//

import UIKit

class ClotheTypeController: UICollectionViewController {

    
    var images = ["J-0","J-1","J-2","J-3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView?.dataSource = self
        collectionView?.delegate = self
        collectionView?.backgroundColor = UIColor.whiteColor()
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("clotheCell", forIndexPath: indexPath) as! ClotheCell
        let diceFaceCount: UInt32 = 4
        let randomRoll = Int(arc4random_uniform(diceFaceCount))
        cell.clotheImage.image = UIImage(named: images[randomRoll])
        
        
        
        return cell
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
