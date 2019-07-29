//
//  MotherView.swift
//  NavigateInSwiftUIComplete
//
//  Created by Andreas Schultz on 19.07.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

import SwiftUI

struct MotherView : View {
    
    @ObjectBinding var viewRouter: ViewRouter
    
    var body: some View {
            VStack {
                if viewRouter.currentPage == "page1" {
                    ContentViewA(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "page2" {
                    ContentViewB(viewRouter: viewRouter)
                }
            }
    }
}

#if DEBUG
struct MotherView_Previews : PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
    }
}
#endif
