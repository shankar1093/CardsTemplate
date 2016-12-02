//
//  CardCellTableViewCell.swift
//  CardsTemplate
//
//  Created by Shankar Rao on 10/16/16.
//  Copyright © 2016 Shankar Rao. All rights reserved.
//

import UIKit

class CardCellTableViewCell: UITableViewCell {

    //MARK: Properties

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var card_view: UIView!
    
    
    
    
    override func layoutSubviews() {
        cardSetup()
        imageSetup()
        

        descriptionLabel.sizeToFit()
        descriptionLabel.adjustsFontSizeToFitWidth = true
        descriptionLabel.textAlignment = .center
    
    }
    
    func cardSetup(){
        self.card_view.alpha=1
        self.card_view.layer.masksToBounds=false
        self.card_view.layer.cornerRadius = 1
        self.card_view.layer.shadowRadius = 1
        self.card_view.layer.shadowOpacity = 0.2
        
    }
    
    func imageSetup(){
        cardImage.layer.cornerRadius = cardImage.frame.size.width/2
        cardImage.clipsToBounds=true
        cardImage.contentMode=UIViewContentMode.scaleAspectFit
        cardImage.backgroundColor = UIColor.white
    }
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
