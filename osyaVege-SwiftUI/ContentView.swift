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
            
            VStack(alignment: .center, spacing: 140, content: {
                NavigationLink(destination: SubView(),
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

struct StartButton: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: SelectView()) {
                Image("startButton")
            }
        }
    }
}
struct SubView: View {
    var body: some View {
        VStack {
            Text("SubView")
        }
        .navigationBarTitle("SubView")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Color.white
            )
    }
}
