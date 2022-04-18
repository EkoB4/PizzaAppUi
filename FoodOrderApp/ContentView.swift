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
                    .frame(width:50,height: 50)
                    .padding()
                    .offset(x:-30,y:-18)
                    .overlay(Image(systemName: "gearshape.2.fill")
                                .foregroundColor(.white)
                                .offset(x:10)
                                .frame(width:UIScreen.main.bounds.width/2 ,height: UIScreen.main.bounds.height/2)
                                .offset(x:-38,y:-20))
            }.padding(.vertical,20)
            HStack{
            Text("Explore Categories")
                    .font(.system(size:15))
                    .bold()
                    .padding(.vertical,-40)
                    .offset(x:15)
                Spacer(minLength: 5)
            }
            ScrollView(.horizontal,showsIndicators: false){
            LazyHStack{
                ForEach(0..<4){content in
                    HStack{
                            ButtonView(PizzaText: "af")
                        }
                    }
                } 
            }
            Spacer(minLength: UIScreen.main.bounds.height*0.5)
        }.background(Color.gray.opacity(0.4))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
