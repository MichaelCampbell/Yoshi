//
//  YoshiTableViewSubmenuItem.swift
//  Yoshi
//
//  Created by Kanglei Fang on 29/06/2017.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/// Internal struct that map the YoshiTableViewMenuItem to a YoshiGenericMenu.
/// This menu is interannly used to support YoshiTableViewMenu.
internal struct YoshiTableViewSubmenuItem: YoshiGenericMenu {
    
    let name: String
    let subtitle: String?
    var selected: Bool
    
    init(tableViewMenuItem: YoshiTableViewMenuItem) {
        self.name = tableViewMenuItem.name
        self.subtitle = tableViewMenuItem.subtitle
        self.selected = false
    }
    
    var cellSource: YoshiReusableCellDataSource {
        return YoshiMenuCellDataSource(title: name, subtitle: subtitle, accessoryType: selected ? .checkmark : .none)
    }
    
    func execute() -> YoshiActionResult {
        return .handled
    }
    
}
