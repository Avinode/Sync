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
