//
//  ContentView.swift
//  testing buttons new
//
//  Created by Zachary Gentile on 4/20/23.
//

import SwiftUI

struct ContentView: View {
    @State var showButtons = true
    @State var button1Pressed = false
    
    
    @State var orderButtonPressed = false
    
    
    
    @State var pressedButtons: [String] = []
    
    
    
    var body: some View {
        if showButtons {
            VStack {
                Button("Drinks") {
                    button1Pressed = true
                    showButtons = false
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                
                Button("Food") {
                    button1Pressed = false
                    showButtons = false
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                
                Button("YOUR ORDER") {
                    orderButtonPressed = true
                    showButtons = false
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
            }
        } else {
            VStack {
                if button1Pressed {
                    Button("Coffee") {
                        
                        
                        pressedButtons.append("Coffee")
                        
                        
                        
                        showButtons = true
                    }
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                    
                    Button("Tea") {
                        
                        pressedButtons.append("Tea")
                        
                        showButtons = true
                    }
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                    
                    Button("Soda") {
                        
                        pressedButtons.append("Soda")
                        
                        showButtons = true
                    }
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                    
                    Button("Water") {
                        
                        pressedButtons.append("Water")
                        
                        showButtons = true
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                    
                    if orderButtonPressed {
                        
                        if pressedButtons.count > 0 {
                            Text("You pressed:")
                                .font(.title)
                            ForEach(pressedButtons, id: \.self) { button in
                                Text(button)
                                    .font(.headline)
                                
                            }
                        }
                    }
                    else {
                    Button("Donuts") {
                        showButtons = true
                    }
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                    
                    Button("Sandwiches") {
                        showButtons = true
                    }
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                    
                    Button("Toast") {
                        showButtons = true
                    }
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                }
                

                        
                        
                    }
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//if pressedButtons.count > 0 {
   //                Text("You pressed:")
  //                     .font(.title)
  //  ForEach(pressedButtons, id: \.self) { button in
  //      Text(button)
   //         .font(.headline)
//
//
//
