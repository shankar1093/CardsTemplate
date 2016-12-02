//
//  CardInfo.swift
//  CardsTemplate
//
//  Created by Shankar Rao on 10/16/16.
//  Copyright © 2016 Shankar Rao. All rights reserved.
//

import UIKit

class CardInfo {
    //MARK: Properties
    var name: String = ""
    var photo: UIImage
    //MARK: Initialization
    init?(name: String, photo:UIImage?){
        self.name = name
        self.photo = photo!
    
    if name.isEmpty{
        return nil
        }
    }
    
}
