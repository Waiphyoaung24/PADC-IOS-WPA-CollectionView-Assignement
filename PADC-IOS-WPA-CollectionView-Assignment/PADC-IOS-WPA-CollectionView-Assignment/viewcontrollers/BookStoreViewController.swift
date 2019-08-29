//
//  BookStoreViewController.swift
//  PADC-IOS-WPA-CollectionView-Assignment
//
//  Created by Waiphyoag on 8/29/19.
//  Copyright © 2019 Waiphyoag. All rights reserved.
//

import UIKit

class BookStoreViewController: UIViewController {

    let numberOfItemsPerRow : CGFloat = 3
    let spacing : CGFloat = 20
    @IBOutlet weak var collectionViewBookStore: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        collectionViewBookStore.delegate = self
        collectionViewBookStore.dataSource = self
       let nib = UINib(nibName: String(describing: BookStoreCollectionViewCell.self), bundle: nil)
        collectionViewBookStore.register(nib, forCellWithReuseIdentifier: String(describing: BookStoreCollectionViewCell.self))
        
        
        let totalPadding : CGFloat = numberOfItemsPerRow * spacing
        let itemWidth : CGFloat = (self.view.frame.width - spacing) / numberOfItemsPerRow
        let layout = collectionViewBookStore.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.minimumLineSpacing = 5
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth+130)
        
        
        
    }
    

  

}

extension BookStoreViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: BookStoreCollectionViewCell.self), for: indexPath) as! BookStoreCollectionViewCell
        return item
    }
    
    
    
}
extension BookStoreViewController : UICollectionViewDelegate {
    
    
}
