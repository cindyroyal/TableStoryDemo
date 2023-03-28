//
//  ViewController.swift
//  TableStory_Demo
//
//  Created by Royal, Cindy L on 3/28/23.
//

import UIKit

//array objects of our data.
let data = [
    Item(name: "Pepe's Tacos", neighborhood: "Downtown", desc: "This food truck offers delicious birria tacos served with a warm consomme.", lat: 30.273320, long: -97.753550, imageName: "rest1"),
    Item(name: "Biscuits + Groovy", neighborhood: "Hyde Park", desc: "Groovy little neighborhood truck serving up biscuits in a variety of styles.", lat: 30.313960, long: -97.719760, imageName: "rest2"),
    Item(name: "Veracruz All Natural", neighborhood: "Mueller", desc: "This is one of many locations for the beloved taco mavens of Austin.", lat: 30.2962244, long: -97.7079799, imageName: "rest3"),
    Item(name: "Vaquero Taquero", neighborhood: "UT", desc: "Delicious tacos with a convenient walk up window. ", lat: 30.295190, long: -97.736540, imageName: "rest4"),
    Item(name: "Uncle Nicky's", neighborhood: "Hyde Park", desc: "Serving up Italian specialties and drinks.", lat: 30.304890, long: -97.726220, imageName: "rest5")
   
]

struct Item {
    var name: String
    var neighborhood: String
    var desc: String
    var lat: Double
    var long: Double
    var imageName: String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var theTable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return data.count
   }


   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell")
       let item = data[indexPath.row]
       cell?.textLabel?.text = item.name
       
       //Add image references
                    let image = UIImage(named: item.imageName)
                    cell?.imageView?.image = image
                    cell?.imageView?.layer.cornerRadius = 10
                    cell?.imageView?.layer.borderWidth = 5
                    cell?.imageView?.layer.borderColor = UIColor.white.cgColor
       return cell!
   }
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        theTable.delegate = self
        theTable.dataSource = self
    }


}


//Demo created on March 28 for GitHub

