//
//  NavigatinInSwiftUIFinishedPart1App.swift
//  NavigatinInSwiftUIFinishedPart1
//
//  Created by Andreas Schultz on 29.10.20.
//

import SwiftUI

@main
struct NavigatinInSwiftUIFinishedPart1App: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: viewRouter)
        }
    }
}
