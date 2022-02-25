//
//  SearchView.swift
//  iostest
//
//  Created by Md Omar Faruq on 2/25/22.
//

import SwiftUI

struct SearchView: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            HStack(){
              
               
                HStack() {
                
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                        .foregroundColor(Color.white)
                    TextField("", text: .constant("Captain"))
                        .foregroundColor(Color.white)
                        .disabled(true)
                         
                    
                }
                
                .padding(.vertical,14)
                .padding(.horizontal)
                .foregroundColor(.blue)
                .background(
                    Capsule()
                        .strokeBorder(Color.white,lineWidth: 0.8))
                
                .frame(width: getRect().width / 1.8)
                .padding(.horizontal,20)
               
               Text ("Cancel")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .font(.system(size: 20))
                
               
            }
            HStack{
                Text("All")
                    .font(.system(size: 18))
                    .foregroundColor(.red)
                    .padding(.horizontal,20)
                Text("Action")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .padding(.horizontal,12)
                Text("Comedy")
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                    .padding(.horizontal,5)
                  Text("Drama")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .padding(.horizontal,3)
                Text("Romance")
                  .font(.system(size: 18))
                  .foregroundColor(.white)
                  .padding(.horizontal,7)
               
            }
            .padding(.vertical,30)
            
           
            HStack() {
            
                Image("image 96")
                    .resizable()
                    
                    .frame(height:200)
                    .frame(width: 148)
                    .cornerRadius(10)
                    .padding(.vertical,13)
                    .foregroundColor(Color.gray)
                    .padding(.horizontal,15)
                VStack( alignment: .leading, spacing: 6){
                    
                    HStack{
                        Text("Captain").foregroundColor(.blue)
                        Text("Marvel") .foregroundColor(Color.white)
                            .padding(.vertical,20)
                            .font(.system(size: 18))
                           // .fontWeight(.medium)
                           
                    }
                   
                    Text("2017 | Fantasy, Action")
                        .foregroundColor(Color.white)
                       // .padding(.vertical,20)
                       
                    HStack() {
                    
                        Image(systemName: "star")
                            .font(.title2)
                            .foregroundColor(Color.yellow)
                        TextField("", text: .constant("46"))
                            .foregroundColor(Color.white)
                            .disabled(true)
                    }
                    HStack(spacing: 10){
                        RoundedButton().padding(.top, 20)
                    }
                    .padding(20)
                }
                
               
                
            }
            
            HStack() {
            
                Image("the-captain")
                    .resizable()
                    
                    .frame(height:200)
                    .frame(width: 148)
                    .cornerRadius(10)
                    .padding(.vertical,13)
                    .foregroundColor(Color.gray)
                    .padding(.horizontal,15)
                VStack( alignment: .leading, spacing: 6){
                    
                    HStack{
                        Text("Captain").foregroundColor(.blue)
                        Text("Marvel") .foregroundColor(Color.white)
                            .padding(.vertical,20)
                            .font(.system(size: 18))
                           // .fontWeight(.medium)
                           
                    }
                   
                    Text("2017 | Fantasy, Action")
                        .foregroundColor(Color.white)
                       // .padding(.vertical,20)
                       
                    HStack() {
                    
                        Image(systemName: "star")
                            .font(.title2)
                            .foregroundColor(Color.yellow)
                        TextField("", text: .constant("46"))
                            .foregroundColor(Color.white)
                            .disabled(true)
                    }
                    HStack(spacing: 10){
                        RoundedButton().padding(.top, 20)
                    }
                    .padding(20)
                }
                
               
                
            }
            
            HStack() {
            
                Image("the-captain")
                    .resizable()
                    
                    .frame(height:200)
                    .frame(width: 148)
                    .cornerRadius(10)
                    .padding(.vertical,13)
                    .foregroundColor(Color.gray)
                    .padding(.horizontal,15)
                VStack( alignment: .leading, spacing: 6){
                    
                    HStack{
                        Text("Captain").foregroundColor(.blue)
                        Text("Marvel") .foregroundColor(Color.white)
                            .padding(.vertical,20)
                            .font(.system(size: 18))
                           // .fontWeight(.medium)
                           
                    }
                   
                    Text("2017 | Fantasy, Action")
                        .foregroundColor(Color.white)
                       // .padding(.vertical,20)
                       
                    HStack() {
                    
                        Image(systemName: "star")
                            .font(.title2)
                            .foregroundColor(Color.yellow)
                        TextField("", text: .constant("46"))
                            .foregroundColor(Color.white)
                            .disabled(true)
                    }
                    HStack(spacing: 10){
                        RoundedButton().padding(.top, 20)
                    }
                    .padding(20)
                }
                
               
                
            }
            

        }
        .background(Color("search"))
        
    }
}
struct RoundedButton : View {
    var body: some View {
        Button(action: {}) {
            HStack {
                Spacer()
                Text("Watch Now")
              //  .frame(Width: 10, Width:10)
                    .font(.subheadline)
                    .fontWeight(.semibold)
//                    .padding(15)
//                    .background(Color.orange)
//                           .foregroundColor(.black)
             // .color(Color.white)
                Spacer()
            }
        }
        .padding(.vertical,20)
        .foregroundColor(.white)
        .background(Color.red)
        .cornerRadius(15.33)
    }
}




struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
