//
//  ListCellViewController.swift
//  MovieChartAgain
//
//  Created by iz on 2017. 5. 30..
//  Copyright © 2017년 iz. All rights reserved.
//

import Foundation

import UIKit

class ListCellViewController : UITableViewController {
    
    let dataset = [
        ("김윤수","남편이여!","1975-03-19",43),
        ("손승은","부인입니당~","1978-11-06",40),
        ("김연우","딸이요~","2017-06-17",3)
    ]
    
    lazy var list : [MovieVO] = {
        //
        var returnCell = [MovieVO]()
        
        for (title,desc,openDate,rating) in self.dataset {
            var mvo = MovieVO()

            mvo.title = title
            mvo.description = desc
            mvo.openDate = openDate
            mvo.rate = rating
            
            returnCell.append(mvo)
            
        }
        
        return returnCell
    } ()
    

    override func viewDidLoad() {
        

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        NSLog("%d", self.list )
        
        return self.list.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let listData = self.list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as UITableViewCell!
        
        cell?.textLabel?.text = listData.title
        cell!.detailTextLabel?.text = listData.description

        return cell!
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
}
