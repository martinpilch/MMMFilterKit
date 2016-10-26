//
//  TableViewCell.swift
//  ImageEditor
//
//  Created by Martin Pilch on 14/10/16.
//  Copyright © 2016 Martin Pilch. All rights reserved.
//

import UIKit

protocol TableViewCellDelegate: class {
    func sliderValueChanged(cell: TableViewCell)
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var slider: UISlider?
    @IBOutlet weak var infoLabel: UILabel?
    @IBOutlet weak var valueLabel: UILabel?
    weak var delegate: TableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func sliderValueChanged(slider: UISlider) {
        valueLabel?.text = "\(slider.value)"
        delegate?.sliderValueChanged(cell: self)
    }

}
