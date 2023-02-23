//
//  DetailsViewController.swift
//  FilmList
//
//  Created by Mohamed amine Regaia on 16/2/2023.
//

import UIKit

class DetailsViewController: UIViewController {
    var name:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmTitle.text = name!
        filmImage.image=UIImage(named: name!)

        // Do any additional setup after loading the view.
    }
    
  
    
    @IBAction func buttonAdd(_ sender: Any) {
    }
    
 
    @IBAction func addtoFavoris(_ sender: Any) {
    }
    //outlet
    @IBOutlet weak var filmImage: UIImageView!
    
    @IBOutlet weak var filmTitle: UILabel!
}
