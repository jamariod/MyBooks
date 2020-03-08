//
//  FullImageViewController.swift
//  MyBooks
//
//  Created by Jamario Davis on 5/2/19.
//  Copyright © 2019 KAYCAM. All rights reserved.
//

import UIKit

class FullImageViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var fullImgView: UIImageView!
    
    @IBOutlet var scrollerView: UIScrollView!
    
    var fullImage = UIImage(named: "1")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollerView.delegate = self
        fullImgView.image = fullImage
        scrollerView.minimumZoomScale = 1
        scrollerView.maximumZoomScale = 4
        scrollerView.contentSize = fullImgView.frame.size
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return fullImgView
    }
}



















































