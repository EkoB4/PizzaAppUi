//
//  ButtonView.swift
//  FoodOrderApp
//
//  Created by VB on 12.04.2022.
//

import SwiftUI

struct ButtonView: View {
    @State var didTap : Bool = false
    @State var PizzaText : String
    var body: some View {
        Button {
            self.didTap = true
        } label: {
            Text("Pizza")
                .font(.system(size: 15))
                .foregroundColor(.black)
                .offset(y:10)
                .font(.system(size: 20))
        }
        .frame(width: 80, height: 120, alignment: .center)
        .background(didTap ? Color.orange : Color.gray.opacity(0.5))
        .cornerRadius(50)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(PizzaText: "ssa")
        MainScreenButtons()
        Oppurtunities()
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
                                ButtonView(PizzaText: "ass")
                        //    }
                        }
                    }
                }
            }
        }
    }
//}

struct Oppurtunities : View {
    var body: some View{
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.white)
                .shadow(radius: 20)
                .overlay(RoundedRectangle(cornerRadius: 10).overlay(Image(systemName: "plus.circle").foregroundColor(.white))
                            .frame(width: 30, height: 30, alignment: .bottomTrailing)
                            .offset(x:60,y:60)
                            )
            
        }
    }
}
