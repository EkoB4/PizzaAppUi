//
//  ButtonView.swift
//  FoodOrderApp
//
//  Created by VB on 12.04.2022.
//

import SwiftUI

struct ButtonView: View {
    @State var didTap : Bool = false
    var body: some View {
        Button {
            self.didTap = true
        } label: {
            Text("sa")
                .font(.system(size: 20))
        }
        .frame(width: 120, height: 160, alignment: .center)
        .background(didTap ? Color.orange : Color.gray.opacity(0.5))
        .overlay(
            Text("sa").offset(y:-10))
        .cornerRadius(50)
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
        MainScreenButtons()
    }
}


struct MainScreenButtons : View {
    var body: some View {
        ScrollView{
            VStack{
                ForEach(0..<10){index in
                    ScrollView(.horizontal, showsIndicators: false) {
                      //  HStack{
                          //  ForEach(0..<20) {index in
                                ButtonView()
                        //    }
                        }
                    }
                }
            }
        }
    }
//}
