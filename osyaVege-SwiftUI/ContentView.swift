//
//  ContentView.swift
//  osyaVege-SwiftUI
//
//  Created by 池本壮介 on 2021/02/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("nomalBackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
            VStack(alignment: .center, spacing: 159, content: {
                Image("logo")
                
                Button(action: {
                    //画面遷移処理するよ
                }, label: {
                    Image("startButton")
                })
            }
            )}
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Color.white
            )
    }
}
