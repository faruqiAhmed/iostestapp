//
//  MovieViewD.swift
//  iostest
//
//  Created by Md Omar Faruq on 2/25/22.
//

import SwiftUI

struct MovieViewD: View {
    var body: some View {
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
                            //Spacer()
                          
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
                            
                                .font(.system(size: 20))
                            
                        }
                        Image("Ellipse 58")
                        Spacer()
                       
                    }
                   
                    .padding(.vertical)
                }
            }
        }
    
        
//        ScrollView(.vertical, showsIndicators: false, content: {
//            LazyVStack (spacing: 15, pinnedViews: [.sectionFooters],content:{
//
//                HStack{
//
//                    Button(action: {}, label:  {
//                        Image(systemName: "chevron.left")
//                            .font(.title2)
//                            .foregroundColor(.white)
//                    })
//
//                    Spacer()
//                    Button(action: {}, label:  {
//                        Image(systemName: "bookmark")
//                            .font(.title2)
//                            .foregroundColor(.white)
//                    })
//                }
//                ZStack{
//                    Image("image 96")
//                        .resizable()
//                        .aspectRatio( contentMode: .fit)
//
//                        Text("Captain Marvel")
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.white)
//                        .font(.system(size: 20))
//                        .padding(.vertical,240)
//                }
//                .padding(.top)
//            })
//        })
        ///    .background(Color("search"))
    }
}

struct MovieViewD_Previews: PreviewProvider {
    static var previews: some View {
        MovieViewD()
    }
}
