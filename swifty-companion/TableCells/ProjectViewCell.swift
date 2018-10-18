//
//  ProjectViewCell.swift
//  swifty-companion
//
//  Created by Mpho KGOSISEJO on 2018/10/17.
//  Copyright © 2018 Mpho KGOSISEJO. All rights reserved.
//

import UIKit

class ProjectViewCell: UITableViewCell {
    @IBOutlet weak var _lblName: UILabel!
    @IBOutlet weak var _lblTries: UILabel!
    @IBOutlet weak var _lblMarks: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func validated(v: ProjectValidated) {
        if v == ProjectValidated.validated {
            self._lblName.textColor = Colors42.LightGreen
            self._lblTries.textColor = Colors42.LightGreen
            self._lblMarks.textColor = Colors42.LightGreen
        }
        else if v == ProjectValidated.faild {
            self._lblName.textColor = Colors42.LightRed
            self._lblTries.textColor = Colors42.LightRed
            self._lblMarks.textColor = Colors42.LightRed
        }
    }
}
