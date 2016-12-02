//
//  FeedController.swift
//  CardsTemplate
//
//  Created by Shankar Rao on 10/16/16.
//  Copyright © 2016 Shankar Rao. All rights reserved.
//

import UIKit

class FeedController: UITableViewController {
    //MARK: Properties
    var cards = [CardInfo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        loadExampleData()
    }
    
    func loadExampleData(){
        let arsenal = #imageLiteral(resourceName: "arsenal")
        let card1 = CardInfo(name: "Arsenal", photo: arsenal)!
        
      
        let chelsea = #imageLiteral(resourceName: "chelsea")
        let card2 = CardInfo(name: "Chelsea", photo: chelsea)!
        
        let card3 = CardInfo(name: "Manchester United", photo: #imageLiteral(resourceName: "manchester_united"))!
        
        let card4 = CardInfo(name: "Barcelona", photo: #imageLiteral(resourceName: "barcelona"))!
        cards += [card1,card2,card3,card4]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cards.count
    }

    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "CardCellTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CardCellTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let card = cards[(indexPath as NSIndexPath).row]
        
        cell.descriptionLabel.text = card.name
        cell.cardImage.image = card.photo
    


        
        return cell
    }
    

}
