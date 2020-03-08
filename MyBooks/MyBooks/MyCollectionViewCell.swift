//
//  MyCollectionViewCell.swift
//  MyBooks
//
//  Created by Jamario Davis on 4/29/19.
//  Copyright © 2019 KAYCAM. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var pictureImgView: UIImageView!
    
    override func awakeFromNib() {
    pictureImgView.layer.cornerRadius = 5
    pictureImgView.clipsToBounds = true 
    }
}
