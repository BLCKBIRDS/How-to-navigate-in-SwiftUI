//
//  NavigationInSwiftUIFinishedPart2App.swift
//  NavigationInSwiftUIFinishedPart2
//
//  Created by Andreas Schultz on 29.10.20.
//

import SwiftUI

@main
struct NavigatingInSwiftUIApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            MotherView().environmentObject(viewRouter)
        }
    }
}
