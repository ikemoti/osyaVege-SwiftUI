//
//  SelectView.swift
//  osyaVege-SwiftUI
//
//  Created by 池本壮介 on 2021/02/20.
//

import Foundation
import SwiftUI

struct SelectView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("nomalBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                
                HStack(alignment: .center, spacing: 20, content: {
                    leftButtons()
                    rightButtons()
                }
            )}
        }
    }
}


struct leftButtons: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            Button(action: {
                
            }, label: {
                Image("selectCarrot")
            })
            Button(action: {
               
            }, label: {
                Image("selectEgplant")
            })
            Button(action: {
               
            }, label: {
                Image("selectCucumber")
            })
        })
    }
    
}

struct rightButtons: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            Button(action: {
                
            }, label: {
                Image("selectOnion")
            })
            Button(action: {
               
            }, label: {
                Image("selectPotato")
            })
            Button(action: {
               
            }, label: {
                Image("selectStrawberry")
            })
        })
    }
    
}

