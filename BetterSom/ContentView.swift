//
//  ContentView.swift
//  BetterSom
//
//  Created by Christos Karapasias on 7/24/20.
//  Copyright © 2020 christos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct Home : View {
    @State var index = 0
    
    var body: some View{
            
            VStack{
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                    .frame(width: 100.0, height: 100.0)
                
                HStack(spacing: 0){
                    
                    Button(action: {
                        
                        withAnimation(.spring()){
                            
                            self.index = 0
                        }
                        
                    }) {
                        
                        VStack{
                            
                            Text("Login")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(self.index == 0 ? .black : .gray)
                            
                            ZStack{
                                
                                // slide animation....
                                
                                Capsule()
                                    .fill(Color.black.opacity(0.04))
                                    .frame( height: 4)
                                
                                if self.index == 0{
                                    
                                    Capsule()
                                        .fill(Color("Color"))
                                        .frame( height: 4)                                }
                            }
                        }
                    }
                    
                    Button(action: {
                        
                        withAnimation(.spring()){
                            
                            self.index = 1
                        }
                        
                    }) {
                        
                        VStack{
                            
                            Text("Sign Up")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(index == 1 ? .black : .gray)
                            
                            ZStack{
                                
                                // slide animation....
                                
                                Capsule()
                                    .fill(Color.black.opacity(0.04))
                                    .frame( height: 4)
                                
                                if index == 1{
                                    
                                    Capsule()
                                        .fill(Color("Color"))
                                        .frame( height: 4)
                                }
                            }
                        }
                    }
                }
                .padding(.top,30)
                
                
                if self.index == 0{
                    
                    Login()
                }
                else{
                }
                }.padding()
            .keyboardAdaptive()
        }
}
struct Login : View {
     
    @State var user = ""
    @State var password = ""
    @State private var keyboardHeight: CGFloat = 0

     var body: some View{
         
      VStack{
                      HStack{
                          VStack(alignment: .leading, spacing: 12) {
          
                              Text("Let's go! Today!")
                                  .font(.title)
                                  .fontWeight(.bold)
                          }
                          Spacer(minLength: 0)
                          
                      }
                      .padding(.horizontal,25)
                      .padding(.top,30)
                      
                      VStack(alignment: .leading, spacing: 15) {
                          
                          
                          Text("Gebruikersnaam")
                              .font(.caption)
                              .fontWeight(.bold)
                              .foregroundColor(.gray)
                          
                          TextField("email", text: $user)
                              .padding()
                              .background(Color.white)
                              .cornerRadius(5)
                          // shadow effect...
                              .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                              .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                          
                          Text("Wachtwoord")
                              .font(.caption)
                              .fontWeight(.bold)
                              .foregroundColor(.gray)
                          
                          SecureField("MijnWachtwoord1234", text: $password)
                              .padding()
                              .background(Color.white)
                              .cornerRadius(5)
                          // shadow effect...
                              .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                              .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                          
                      }
                      .padding(.horizontal,25)
                      .padding(.top,25)
                      
                      // Login Button....
                      
                      Button(action: {}) {
                          
                          Text("Inloggen")
                              .font(.system(size: 20))
                              .foregroundColor(.white)
                              .fontWeight(.bold)
                              .padding(.vertical)
                              .frame(width: UIScreen.main.bounds.width - 50)
                              .background(
                              
                                  LinearGradient(gradient: .init(colors: [Color("Color"),Color("Color1")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                              )
                              .cornerRadius(8)
                      }
                      .padding(.horizontal,25)
                      .padding(.top,25)
                  }
              }
          }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
