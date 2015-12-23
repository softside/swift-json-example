//
//  YRCommnentsCell.swift
//  JokeClient-Swift
//
//  Created by YANGReal on 14-6-7.
//  Copyright (c) 2014年 YANGReal. All rights reserved.
//

import UIKit

class YRCommnentsCell: UITableViewCell {

 
    @IBOutlet var contentLabel:UILabel?
    
    @IBOutlet var voteLabel: UILabel!
    var data :NSDictionary!

    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews()
    {
        super.layoutSubviews()
        let content = self.data.stringAttributeForKey("content")
        let vote = self.data.stringAttributeForKey("vote")
        let height = content.stringHeightWith(17,width:320)
        self.contentLabel!.setHeight(height)
        self.contentLabel!.text = content
        self.voteLabel!.text = vote
    }

    
    
    
    
    class func cellHeightByData(data:NSDictionary)->CGFloat
    {
        let content = data.stringAttributeForKey("content")
        let height = content.stringHeightWith(17,width:320)
        return 53.0 + height + 24.0
    }

    
}
