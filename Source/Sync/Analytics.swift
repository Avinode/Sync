//
//  AnalyticsProvider.swift
//  Project
//
//  Created by Alex Belliotti on 2/15/24.
//

import Foundation

public protocol AnalyticsProvidable {
    static func track(event: String, params: [String: Any]?)
    static func track(error: Error, params: [String: Any]?)
}

extension Sync.OperationOptions {
    var analyticsString: String {
        var optionsStrings = [String]()
        
        if self.contains(.insert) {
            optionsStrings.append("insert")
        }
        
        if self.contains(.insertRelationships) {
            optionsStrings.append("insertRelationships")
        }
        
        if self.contains(.update) {
            optionsStrings.append("update")
        }
        
        if self.contains(.updateRelationships) {
            optionsStrings.append("updateRelationships")
        }
        
        if self.contains(.delete) {
            optionsStrings.append("delete")
        }
        
        if self.contains(.deleteRelationships) {
            optionsStrings.append("deleteRelationships")
        }
        
        return optionsStrings.joined(separator: ",")
    }
}
