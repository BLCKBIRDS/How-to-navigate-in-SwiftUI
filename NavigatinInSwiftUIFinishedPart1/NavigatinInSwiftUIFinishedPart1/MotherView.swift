//
//  MotherView.swift
//  NavigatinInSwiftUIStarter
//
//  Created by Andreas Schultz on 29.10.20.
//

import SwiftUI

struct MotherView: View {
    
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            ContentViewA(viewRouter: viewRouter)
        case .page2:
            ContentViewB(viewRouter: viewRouter)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
    }
}
