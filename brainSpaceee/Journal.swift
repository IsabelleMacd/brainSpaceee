//
//  Journal.swift
//  brainSpaceee
//
//  Created by Scholar on 6/29/23.
//

import Foundation
class Journal: Identifiable {
    var entry = ""
    var id = UUID()
    
    init(entry: String) {
        self.entry = entry
        
    }
}
