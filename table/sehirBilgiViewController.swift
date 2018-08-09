//
//  sehirBilgiViewController.swift
//  table
//
//  Created by Süleyman Ekici on 10.08.2018.
//  Copyright © 2018 Süleyman Ekici. All rights reserved.
//

import UIKit

class sehirBilgiViewController: UIViewController {
    @IBOutlet weak var Simage: UIImageView!
    @IBOutlet weak var Sname: UILabel!
    
    @IBOutlet weak var iamgeView: UIImageView!
    
    @IBOutlet weak var labelView: UILabel!
    
    var landmarkName = ""
    var landmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        iamgeView.image = landmarkImage
        labelView.text = landmarkName
    
    }

  
    

    
}
