//
//  ViewController.swift
//  table
//
//  Created by Süleyman Ekici on 9.08.2018.
//  Copyright © 2018 Süleyman Ekici. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var landmarkName = [String]()
    var landmarkImage = [UIImage]()
    var SelectdlandmarkName = ""
    var SelectdlandmarkImage = UIImage()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.dataSource = self
       tableView.delegate = self
        
       landmarkName.append("paris")
       landmarkName.append("belerus")
        
        landmarkImage.append(UIImage(named: "paris.jpeg")!)
        landmarkImage.append(UIImage(named: "belerus.jpeg")!)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkName.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?    ) {
        if segue.identifier == "gecisVC" {
            
            let destinationVC = segue.destination as! sehirBilgiViewController
            destinationVC.landmarkName = SelectdlandmarkName
            destinationVC.landmarkImage = SelectdlandmarkImage
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        SelectdlandmarkName = landmarkName[indexPath.row]
        SelectdlandmarkImage = landmarkImage[indexPath.row]
        
        performSegue(withIdentifier: "gecisVC", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            landmarkName.remove(at: indexPath.row)
            landmarkImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = UITableViewCell()
        cell.textLabel?.text = landmarkName[indexPath.row]
        return cell
    }
}

