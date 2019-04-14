//
//  MovieCell.swift
//  Filx
//
//  Created by Yuhui Chen on 4/13/19.
//  Copyright © 2019 Yuhui Chen. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var PosterPic: UIImageView!
    @IBOutlet weak var TitleText: UILabel!
    @IBOutlet weak var Intro: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
