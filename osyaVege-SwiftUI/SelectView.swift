//
//  SelectView.swift
//  osyaVege-SwiftUI
//
//  Created by 池本壮介 on 2021/02/20.
//

import Foundation
import SwiftUI

struct SelectView: View {
    @State var isActiveSubView = false
    var body: some View {
        NavigationView {
            ZStack {
                Image("nomalBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                
                HStack(alignment: .center, spacing: 20, content: {
                    NavigationLink(destination: PurchaceView(),
                                   isActive: $isActiveSubView) {
                        EmptyView()
                    }
                    VStack(alignment: .center, spacing: 20, content: {
                        Button(action: {
                            self.isActiveSubView.toggle()
                        }, label: {
                            Image("selectCarrot")
                        })
                        Button(action: {
                            self.isActiveSubView.toggle()
                        }, label: {
                            Image("selectEgplant")
                        })
                        Button(action: {
                            self.isActiveSubView.toggle()
                        }, label: {
                            Image("selectCucumber")
                        })
                    })
                    VStack(alignment: .center, spacing: 20, content: {
                        Button(action: {
                            self.isActiveSubView.toggle()
                        }, label: {
                            Image("selectOnion")
                        })
                        Button(action: {
                            self.isActiveSubView.toggle()
                        }, label: {
                            Image("selectPotato")
                        })
                        Button(action: {
                            self.isActiveSubView.toggle()
                        }, label: {
                            Image("selectStrawberry")
                        })
                    })
                    
                }
            )}
        }
    }
}


struct leftButtons: View {
    @State var isActiveSubView = false
    var body: some View {
       
        VStack(alignment: .center, spacing: 20, content: {
            Button(action: {
                self.isActiveSubView.toggle()
            }, label: {
                Image("selectCarrot")
            })
            Button(action: {
                self.isActiveSubView.toggle()
            }, label: {
                Image("selectEgplant")
            })
            Button(action: {
                self.isActiveSubView.toggle()
            }, label: {
                Image("selectCucumber")
            })
        })
    }
    
}

struct rightButtons: View {
    @State var isActiveSubView = false
    var body: some View {
        
        VStack(alignment: .center, spacing: 20, content: {
            Button(action: {
                self.isActiveSubView.toggle()
            }, label: {
                Image("selectOnion")
            })
            Button(action: {
                self.isActiveSubView.toggle()
            }, label: {
                Image("selectPotato")
            })
            Button(action: {
                self.isActiveSubView.toggle()
            }, label: {
                Image("selectStrawberry")
            })
        })
    }
    
}

