//
//  MovieViewD.swift
//  iostest
//
//  Created by Md Omar Faruq on 2/25/22.
//

import SwiftUI

struct MovieViewD: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
        VStack{
            ZStack {
                Color("search")
                 
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("image 96")
                        
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .edgesIgnoringSafeArea(.top)
                   
                    VStack {
                        Text("Captain Marvel")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text("2019 | Action, Fantasy | 2h 34min")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .padding()
                            .font(.system(size: 20))
                        HStack (spacing: 4)
                        
                        {
                        
                            ForEach(0 ..< 5) { item in
                                Image(systemName: "star")
                                    .font(.title2)
                                    .foregroundColor(Color.yellow)
                                
                            }
                            
                            Text("4.5")
                                .font(.title2)
                                .foregroundColor(Color.yellow)
                           
                          
                        }
                        
                        Text("Distributed by Walt Disney Studios Motion Pictures, it is the 21st film in the Marvel Cinematic Universe (MCU).")
                            .padding()
                            .lineSpacing(8.0)
                            .foregroundColor(.gray)
                            .font(.system(size: 20))
                      
                    }
                    HStack{
                        VStack{
                            Text("Cast")
                                .fontWeight(.bold)
                                .foregroundColor(.gray)
                                .padding(.horizontal,30)
                                .font(.system(size: 24))
                            Image("cast")
                                .padding(.horizontal, 30)
                        }
                        
                       
                        Spacer()
                       
                      
                    }
                    
                    HStack(spacing: 10){
                        Image("detail")
//                            .resizable()
//                              .frame(width: 20, height: 20)
//                              .foregroundColor(.white)
//                              .padding(25)
//                              .background(Color.gray)
//                              .clipShape(Circle())
//                              RoundedButton().padding(.bottom,20)
//                            .padding(.top,10)
                       
                    }
                   
                    .padding(.vertical)
                }
            }
        }
    
        

        })
    }
}

struct MovieViewD_Previews: PreviewProvider {
    static var previews: some View {
        MovieViewD()
    }
}
struct RoundedButton1 : View {
    var body: some View {
        Button(action: {}) {
            HStack {
                Spacer()
                Text("Watch Now")
             //.frame(Width: 10, Width:10)
                    .font(.subheadline)
                    .fontWeight(.semibold)
//                    .padding(15)
//                    .background(Color.orange)
//                           .foregroundColor(.black)
             // .color(Color.white)
                Spacer()
            }
        }
        .padding(.vertical,30)
        .foregroundColor(.white)
        .background(Color.red)
        .cornerRadius(15.33)
    }
}
