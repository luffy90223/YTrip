//
//  TableViewController.swift
//  Ryan's Trip
//
//  Created by Ryan Yang on 10/24/16.
//  Copyright © 2016 F4. All rights reserved.
//

import UIKit

struct cellData {
    let cell : Int!
    let text : String!
    let image : UIImage!
    
}


class TableViewController: UITableViewController {
        
    var arrayOfCellData = [cellData]()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.navigationItem.title = "List"
        arrayOfCellData = [cellData(cell : 1, text : "09/10/1016", image : #imageLiteral(resourceName: "img1")),
                           cellData(cell : 2, text : "09/12/1016", image : #imageLiteral(resourceName: "img2")),
                           cellData(cell : 1, text : "09/13/1016", image : #imageLiteral(resourceName: "img3")),
                           cellData(cell : 2, text : "09/14/1016", image : #imageLiteral(resourceName: "img6")),
                           cellData(cell : 1, text : "09/14/1016", image : #imageLiteral(resourceName: "img4")),
                           cellData(cell : 2, text : "09/15/1016", image : #imageLiteral(resourceName: "img5")),
                           cellData(cell : 1, text : "09/16/1016", image : #imageLiteral(resourceName: "img7"))]
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if arrayOfCellData[indexPath.row].cell == 1{
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
            
        }else if arrayOfCellData[indexPath.row].cell == 2{
            let cell = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
        }else{
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
            
        }
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if arrayOfCellData[indexPath.row].cell == 1{
            return 322
        }else if arrayOfCellData[indexPath.row].cell == 2{
            return 320
        }else{
            return 322
        }
    }
}
