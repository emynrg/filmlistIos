//
//  ViewController.swift
//  FilmList
//
//  Created by Mohamed amine Regaia on 16/2/2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    var data = ["El Camino","Extraction"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Mcell")
        let contectview =   cell?.viewWithTag(0)
        let label = contectview?.viewWithTag(2) as!UILabel
        let img = contectview?.viewWithTag(1) as! UIImageView
        label.text = data[indexPath.row]
        img.image = UIImage(named: data[indexPath.row])
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Msegue", sender: indexPath)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index = sender as! IndexPath
        if (segue.identifier == "Msegue")
        {
            let destination = segue.destination as! DetailsViewController
            destination.name = data[index.row]
        }else if segue.identifier == "segue2"
        {
            let destination = segue.destination as! FavorisViewController
        }
                    
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

