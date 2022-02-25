//
//  Home.swift
//  iostest
//
//  Created by Md Omar Faruq on 2/24/22.
//

import SwiftUI

struct Home: View {
    @StateObject var homeData: HomeViewModel = HomeViewModel()
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            HStack(){
              
               
                HStack() {
                
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                        .foregroundColor(Color.white)
                    TextField("", text: .constant("Search"))
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
            
           
            HStack() {
            
                Image("captain-america-1")
                    .resizable()
                    
                    .frame(height:115)
                    .frame(width: 100)
                    .cornerRadius(10)
                    .padding(.vertical,13)
                    .foregroundColor(Color.gray)
                    .padding(.horizontal,15)
                VStack( alignment: .leading, spacing: 6){
                    Text("Captain America")
                        .foregroundColor(Color.white)
                    Text("2017 | Fantasy, Action")
                        .foregroundColor(Color.white)
                        .padding(.vertical,1)
                    HStack() {
                    
                        Image(systemName: "star")
                            .font(.title2)
                            .foregroundColor(Color.yellow)
                        TextField("", text: .constant("46"))
                            .foregroundColor(Color.white)
                            .disabled(true)
                    }
                        
                }
                
                HStack{
                    Image("Vector1")
                        .padding(.horizontal,35)
                            
                }
                
                .padding(.vertical,20)
                
            }
            HStack() {
            
                Image("image 96")
                    .resizable()
                    
                    .frame(height:115)
                    .frame(width: 100)
                    .cornerRadius(10)
                    .padding(.vertical,13)
                    .foregroundColor(Color.gray)
                    .padding(.horizontal,15)
                VStack( alignment: .leading, spacing: 6){
                    Text("Captain America")
                        .foregroundColor(Color.white)
                    Text("2017 | Fantasy, Action")
                        .foregroundColor(Color.white)
                        .padding(.vertical,1)
                    HStack() {
                    
                        Image(systemName: "star")
                            .font(.title2)
                            .foregroundColor(Color.yellow)
                        TextField("", text: .constant("46"))
                            .foregroundColor(Color.white)
                            .disabled(true)
                    }
                        
                }
                
                HStack{
                    Image("Vector1")
                        .padding(.horizontal,35)
                }
                
                .padding(.vertical,20)
                
            }
            
            HStack(spacing: 6) {
                Text("Popular")
                    .fontWeight(.medium)
                    .font(.title2)
              .foregroundColor(Color.white)
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.horizontal,45)
            
                Text("See All")
                    .padding(.horizontal,13)
                    .foregroundColor(Color.white)
            }
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack(spacing: 25 ){
                    ForEach(homeData.products) { product in
                        MovieCardView(product: product)
                        
                    }
            
                }
            
                .padding(.horizontal ,30)
                //.padding(.bottom)
                //.padding(.top,)
            }
            .padding(.top ,30)
            
            ScrollView (.horizontal, showsIndicators: false){
                
                HStack(spacing: 25 ){
                    ForEach(homeData.products) { product in
                        MovieCardView(product: product)
                        
                    }
            
                }
                .padding(.horizontal ,40)
                .padding(.bottom)
                .padding(.top,5)
            }
        
        }
       .background(Color("search"))
       
      
    }
}

@ViewBuilder
func  MovieCardView  (product: Product) -> some View{
    
    VStack(spacing: 10){
        Image(product.productImage)
            .resizable()
            .aspectRatio(contentMode: .fit)
          // .frame(width: 200, height: 150)
            .cornerRadius(30)
        Text(product.title)
            .fontWeight(.bold)
            .font(.system(size: 22))
            .foregroundColor(.white)
            .padding(.top)
        Text(product.subtitle)
            .fontWeight(.bold)
            .font(.system(size: 18))
            .foregroundColor(.gray)
            .padding(.top ,5)
    }
   
}

@ViewBuilder
func MovieTypeView (type: ProductType) -> some View{
    
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

extension View {
    func getRect ()-> CGRect{
        return UIScreen.main.bounds
    }
}
