//
//  LiveActivityWidgetBundle.swift
//  LiveActivityWidget
//
//  Created by Himanshu on 21/06/25.
//

import WidgetKit
import SwiftUI

@main
struct LiveActivityWidgetBundle: WidgetBundle {
    var body: some Widget {
        LiveActivityWidget()
        LiveActivityWidgetLiveActivity()
    }
}
