//
//  ViewController.swift
//  CustomTableView
//
//  Created by 이용수 on 2023/04/28.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var tableView : UITableView!
    
    struct Sunset {
        let title : String
        let imageName : String
    }
    let data : [Sunset] = [
        Sunset(title: "sunsetWithAPerson", imageName: "sunset1"),
        Sunset(title: "sunsetWithATree", imageName: "sunset2"),
        Sunset(title: "sunsetWithBeach", imageName: "sunset3"),
        Sunset(title: "sunsetWithAMountain", imageName: "sunset4"),
        Sunset(title: "sunsetBetweenTrees", imageName: "sunset5")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        
        let sunset = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = sunset.title
        cell.iconeImageView.image = UIImage(named: sunset.imageName)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    
}
