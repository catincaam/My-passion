//
//  ContentView.swift
//  My passion
//
//  Created by Marinescu Catinca on 21.08.2024.
//




import SwiftUI

extension Color {
    static let customPink = Color(red: 166/255, green: 146/255, blue: 121/255)
}

struct ContentView: View {
    
     @State var photo = "poza1"
    
    var body: some View {
        
        ZStack {
            Image("fundal")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                HStack {
                    Spacer()
                    Image(photo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                        .padding(20)
                        .frame(width: 450, height: 450)
                        .frame(maxWidth: .infinity)
                    Spacer()
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Button(action: {
                                    deal()
                                }) {
                                    Text("Press here <33")
                                        .font(.headline)
                                        .foregroundColor(.customPink)
                                        .padding()
                                        .cornerRadius(10)
                                }
                                .frame(height: 50) // Setează înălțimea fixă a butonului
                                                .padding(.bottom, 20) // Adaugă padding jos pentru poziționare constantă
                
                Spacer()
                
            }
        }
        
        }
    
    func deal() {
        let playerCardValue = Int.random(in: 1...13)
        photo = "poza" + String(playerCardValue)
        }
    }
            

#Preview {
    ContentView()
}



