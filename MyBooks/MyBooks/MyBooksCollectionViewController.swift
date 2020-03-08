//
//  MyBooksCollectionViewController.swift
//  MyBooks
//
//  Created by Jamario Davis on 4/29/19.
//  Copyright © 2019 KAYCAM. All rights reserved.
//

import UIKit


var imagesArray = [UIImage(named:"0")!,UIImage(named:"1")!,UIImage(named:"2")!,UIImage(named:"3")!,UIImage(named:"4")!,UIImage(named:"5")!,UIImage(named:"6")!,UIImage(named:"7")!,UIImage(named:"8")!, UIImage(named:"9")!, UIImage(named:"10")!,UIImage(named:"11")!,UIImage(named:"12")!,UIImage(named:"13")!,UIImage(named:"14")!,UIImage(named:"15")!,UIImage(named:"16")!,UIImage(named:"17")!,UIImage(named:"18")!, UIImage(named:"19")!, UIImage(named:"20")!]
    
class MyBooksCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesArray.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bookCell", for: indexPath) as! MyCollectionViewCell
        cell.pictureImgView.image = imagesArray[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.size.width/3)-10, height: (collectionView.frame.size.width/3))
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }

    @IBAction func close(segue: UIStoryboardSegue)
    {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! FullImageViewController
        if let indexPathArray = collectionView?.indexPathsForSelectedItems
        {
            let selectedIndexPath = indexPathArray[0]
            let selectedImage = imagesArray[selectedIndexPath.row]
            destinationVC.fullImage = selectedImage
        }
    }
}







































































