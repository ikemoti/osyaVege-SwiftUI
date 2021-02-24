//
//  ContentView.swift
//  osyaVege-SwiftUI
//
//  Created by 池本壮介 on 2021/02/17.
//

import SwiftUI

struct ContentView: View {
    @State var isActiveSubView = false
    var body: some View {
        NavigationView {
            ZStack {
                Image("nomalBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                
                VStack(alignment: .center, spacing: 100, content: {
                    NavigationLink(destination: SelectView(),
                                   isActive: $isActiveSubView) {
                        EmptyView()
                    }
                    Image("logo")
                    
                    Button(action: {
                        self.isActiveSubView.toggle()
                    }, label: {
                        Image("startButton")
                    })
                }
                )}
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Color.white
            )
    }
}
