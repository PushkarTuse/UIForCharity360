//
//  ViewController.swift
//  eventui2
//
//  Created by admin on 13/03/24.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource , UITableViewDelegate{

    @IBOutlet weak var table : UITableView!
    
    struct Sunset {
        let title : String
        let imageName : String
        let org : String
        let start : String
        let end : String
        let location : String
        let volunteers : String
    }
    
    let data : [Sunset] = [
        Sunset(title: "TestImage", imageName: "image", org : "HandsHelp", start : "22.07.2022 " , end : "22.07.2022 " , location: "Mumbai" , volunteers: "Ten"),Sunset(title: "TestImage", imageName: "image", org : "HandsHelp", start : "22.07.2022 " , end : "22.07.2022" , location: "Mumbai" , volunteers: "Ten"),Sunset(title: "TestImage", imageName: "image", org : "HandsHelp", start : "22.07.2022 " , end : "22.07.2022 " , location: "Mumbai" , volunteers: "Ten"),Sunset(title: "TestImage", imageName: "image", org : "HandsHelp", start : "22.07.2022 " , end : "22.07.2022 " , location: "Mumbai" , volunteers: "Ten"),Sunset(title: "TestImage", imageName: "image", org : "HandsHelp", start : "22.07.2022 " , end : "22.07.2022" , location: "Mumbai" , volunteers: "Ten")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.dataSource = self
        table.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sunset = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.Label.text = sunset.title
        cell.EventImage.image = UIImage(named: sunset.imageName)
        cell.EventOrg.text = sunset.org
        cell.EventStart.text = sunset.start
        cell.EventEnd.text = sunset.end
        cell.EventLoc.text = sunset.location
        cell.EventVol.text = sunset.volunteers
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
}

