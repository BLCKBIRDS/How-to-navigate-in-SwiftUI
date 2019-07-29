//
//  ViewRouter.swift
//  NavigateInSwiftUIComplete
//
//  Created by Andreas Schultz on 19.07.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter: BindableObject {
    
    let willChange = PassthroughSubject<ViewRouter,Never>()
    
    var currentPage: String = "page1" {
        didSet {
            willChange.send(self)
        }
    }
}
