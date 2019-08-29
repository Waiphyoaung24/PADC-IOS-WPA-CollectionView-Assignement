//
//  Extensions.swift
//  PADC-IOS-WPA-CollectionView-Assignment
//
//  Created by Waiphyoag on 8/29/19.
//  Copyright © 2019 Waiphyoag. All rights reserved.
//

import Foundation
import UIKit
extension UICollectionView {
    
    func registerForCell(strID : String)  {
        
        register(UINib(nibName: strID, bundle: nil), forCellWithReuseIdentifier: strID)
    }
}
