//File: ContentViewB.swift
//Project: NavigatinInSwiftUIStarter
//Created on 24.08.20
//Visit www.BLCKBIRDS.com for more tutorials.

import SwiftUI

struct ContentViewB: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            HappyDog()
            Button(action: {
                withAnimation {
                    viewRouter.currentPage = .page1
                }
            }) {
                BackButtonContent()
            }
        }
    }
}

struct ContentViewB_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewB().environmentObject(ViewRouter())
    }
}


struct HappyDog : View {
    var body: some View {
        return Image("happyDog")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 600)
            .cornerRadius(10)
            .clipped()
    }
}

struct BackButtonContent : View {
    var body: some View {
        return Text("Back")
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .cornerRadius(15)
            .padding(.top, 50)
    }
}
