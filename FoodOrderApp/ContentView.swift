//
//  ContentView.swift
//  FoodOrderApp
//
//  Created by VB on 7.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State var userText : String = ""
    @State var isSearch : Bool = false
    var body: some View {
        VStack{
            HStack(alignment:.top){
                HStack{
                    TextField("sa", text: $userText)
                        .padding(.leading,40)
                        .frame(width:UIScreen.main.bounds.width/1.5,height: UIScreen.main.bounds.height/12)
                }
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .padding(10)
                        Spacer()
                        if isSearch{
                            Button {
                                userText = ""
                            } label: {
                                Image(systemName: "xmark.circle")
                                    .padding(.vertical)
                            }
                            
                        }
                    })
                .background(Color.white)
                .cornerRadius(12)
                .padding(.horizontal,30)
                .offset(x:10)
              Spacer()
                RoundedRectangle(cornerRadius: 10)
                    .frame(width:60,height: 60)
                    .padding()
                    .offset(x:-30,y:-18)
                    .overlay(Image(systemName: "gearshape.2.fill")
                                .foregroundColor(.white)
                                .offset(x:10)
                                .frame(width:UIScreen.main.bounds.width/2 ,height: UIScreen.main.bounds.height/2)
                                .offset(x:-38,y:-20))
            }.padding(.vertical,50)
            Spacer()
        }.background(Color.gray.opacity(0.4))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
