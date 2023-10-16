//
//  ContentView.swift
//  Celebration-Page
//
//  Created by Ahad on 01/04/1445 AH.
//

import SwiftUI
import ConfettiSwiftUI

struct ContentView: View {
    @State var counter:Int = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                
//    Color.color3
//    .ignoresSafeArea()
                Image("Image1")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                    .blur(radius: 9.0)
                RoundedRectangle(cornerRadius: 29)
                    .fill(.color3)
                    .stroke(.black, lineWidth: 2.5)
                    .frame(width: 601.0, height: 600.0)
                
                
                VStack (spacing:20) {
                    
                    Text("أحسنت!")
                        .font(.custom( "Ithra", size: 90))
                        .fontWeight(.bold).foregroundColor(Color("Color1"))  .font(.system(size:60))
                      
                    
                        .multilineTextAlignment(.center)
                        .padding(.top, 300.0)
                        .onAppear(){counter += 1}
                    ConfettiCannon(counter: $counter)
                    
                    Text("أنت تحرز تقدمًا كبيراً، واصل المسير 👏🏻")
                        .font(.custom( "Ithra", size: 33))
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .padding(.top,-70)
                   
                }
                .padding(.bottom, 500.0)
                Button {
                } label: {
                    
                    HStack (spacing: 20) {
                        
                        Image(systemName:"arrowshape.backward.circle.fill")
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                        
                        
                       
                            NavigationLink(destination: MainP()) {
                                VStack{
                                    Text("أكمل")
                                        .font(.custom( "Ithra", size: 40))
                                    
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .multilineTextAlignment(.center)
                                        .lineLimit(20)
                                
                                }
                            }
                        }
//
                    }
                    
                .frame(width: 240.0, height: 100.0)
                    .background(.color2)
                    .foregroundColor(.black)
                    .cornerRadius(40)
                    .shadow(radius: 10)
                    .padding(.top, 200.0)
                    
                    
                    
                }.multilineTextAlignment(.center)
                
        }
            
        }
    }



struct MainP: View {
    var body: some View {
       
     
    Text("هنا صفحة رانيا")
        
    }

}
    


            
        
         
    



#Preview {
    ContentView()
}
