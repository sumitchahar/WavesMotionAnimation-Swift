//
//  DetailsControllerTVCell.swift
//  CodeMigrations
//
//  Created by Sumit on 26/08/24.
//

import UIKit

class DetailsControllerTVCell: UITableViewCell {

    @IBOutlet weak var rowCount_lab:UILabel!
    @IBOutlet weak var title_lab:UILabel!
    @IBOutlet weak var des_lab:UILabel!
    @IBOutlet weak var img:UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        img.layer.cornerRadius = 12
        img.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func updateValue(_ model:DetailsControllerModel) {
        rowCount_lab.text = model.rowCount
        title_lab.text = model.title
        des_lab.text = model.describtions
        img.image = UIImage(named: model.img)
    }

 }
