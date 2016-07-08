//
//  SwitchWithTextTableViewCell.swift
//  ProtocolOriented
//
//  Created by wang tie on 16/7/7.
//  Copyright © 2016年 developer. All rights reserved.
//

import UIKit

protocol SwitchWithTextCellDelegate {
    func onSwitchToggleOn(on:Bool)
    var switchColor: UIColor {get}
    var textColor: UIColor {get}
    var font: UIFont {get}
}
protocol SwitchWithTextCellDataSource {
    var title: String {get}
    var switchOn: Bool {get}
}

extension SwitchWithTextCellDelegate{
    var switchColor: UIColor {
        return .purple()
    }
    var textColor: UIColor {
        return .black()
    }
    var font: UIFont {
        return .systemFont(ofSize: 17)
    }
    
}
class SwitchWithTextTableViewCell: UITableViewCell {
        
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var switchToggle: UISwitch!
    
    private var delegate: SwitchWithTextCellDelegate?
    private var dataSource: SwitchWithTextCellDataSource?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func onSwitchToggle(_ sender: UISwitch) {
        delegate?.onSwitchToggleOn(on: sender.isOn)
    }
  
    func configure(withDelegate delegate: SwitchWithTextCellDelegate, dataSource: SwitchWithTextCellDataSource) {
        self.delegate = delegate
        self.dataSource = dataSource
        label.text = dataSource.title
        label.textColor = delegate.textColor
        label.font = delegate.font
        switchToggle.setOn(dataSource.switchOn, animated: true)
//        switchToggle.tintColor = delegate.switchColor
        switchToggle.onTintColor = delegate.switchColor
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
