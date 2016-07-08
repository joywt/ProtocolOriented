//
//  MinionModeViewModel.swift
//  ProtocolOriented
//
//  Created by wang tie on 16/7/7.
//  Copyright © 2016年 developer. All rights reserved.
//

import UIKit

struct MinionModeViewModel: SwitchWithTextCellDataSource{
    var title = "Minion Mode!!!"
    var switchOn: Bool = true
}


extension MinionModeViewModel: SwitchWithTextCellDelegate{
    func onSwitchToggleOn(on: Bool) {
        if  on {
            print("The Minions are here to stay!")
        }else {
            print("The Minions went out to play!")
        }
    }
}
