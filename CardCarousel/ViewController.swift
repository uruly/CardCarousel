//
//  ViewController.swift
//  CardCarousel
//
//  Created by Reona Kubo on 2018/06/10.
//  Copyright © 2018年 Reona Kubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var carouselView:CarouselView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let width = self.view.frame.width
        let height = self.view.frame.height
        
        carouselView = CarouselView(frame: CGRect(x:0, y:0, width:width, height:height))
        carouselView.center = CGPoint(x:width / 2,y: height / 2)
        carouselView.backgroundColor = UIColor.white
        self.view.addSubview(carouselView)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        carouselView.scrollToItem(at: IndexPath(row: 5, section: 0), at: .centeredHorizontally, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

