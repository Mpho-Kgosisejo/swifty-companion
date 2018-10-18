//
//  SkillTableViewCell.swift
//  swifty-companion
//
//  Created by Mpho KGOSISEJO on 2018/10/17.
//  Copyright © 2018 Mpho KGOSISEJO. All rights reserved.
//

import UIKit

class SkillTableViewCell: UITableViewCell {
    @IBOutlet weak var _lblName: UILabel!
    @IBOutlet weak var _progressBar: UIProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setProgressBar(level: Double) {
        
        self._progressBar.setProgress(Float(level * 0.01), animated: true)
    }
}
