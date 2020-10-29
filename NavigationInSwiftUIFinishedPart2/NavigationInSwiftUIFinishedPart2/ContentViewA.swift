//File: ContentViewA.swift
//Project: NavigatinInSwiftUIStarter
//Created on 24.08.20
//Visit www.BLCKBIRDS.com for more tutorials.

import SwiftUI

struct ContentViewA: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            GrumpyDog()
            Button(action: {
                withAnimation {
                    viewRouter.currentPage = .page2
                }
            }) {
                NextButtonContent()
            }
        }
    }
}

struct ContentViewA_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewA().environmentObject(ViewRouter())
    }
}



struct NextButtonContent : View {
    var body: some View {
        Text("Next")
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .cornerRadius(15)
            .padding(.top, 50)
    }
}

struct GrumpyDog : View {
    var body: some View {
        Image("grumpyDog")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 600)
            .cornerRadius(10)
            .clipped()
    }
}

