//
//  ContentView.swift
//  testing buttons new
//
//  Created by Zachary Gentile on 4/20/23.
//

import SwiftUI

struct ContentView: View {
    @State var showButtons = true
    @State var button = 0;
    
    
    
    
    
    @State var pressedButtons: [String] = []
    
    
    
    var body: some View {
        if showButtons {
            VStack {
                Button("Drinks") {
                    button = 1
                    showButtons = false
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                
                Button("Food") {
                    button = 2
                    showButtons = false
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                
                Button("YOUR ORDER") {
                    button = 3
                    showButtons = false
                    
                }
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                
                
                
            }
        }
        else {
            VStack {
                
                switch (button) {
                    
                case 1:
                    Button("Coffee") {
                        
                        
                        pressedButtons.append("Coffee")
                        
                        
                        
                        showButtons = true
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                    
                    Button("Tea") {
                        
                        pressedButtons.append("Tea")
                        
                        showButtons = true
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                    
                    Button("Soda") {
                        
                        pressedButtons.append("Soda")
                        
                        showButtons = true
                    }
                    .padding()
                    .background(Color.blue)
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
                    
                    
                    
                    
                    
                case 2:
                    Button("Donuts") {
                        
                        pressedButtons.append("Donuts")
                        showButtons = true
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                    
                    Button("Sandwiches") {
                        pressedButtons.append("Sandwiches")
                        showButtons = true
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                    
                    Button("Toast") {
                        pressedButtons.append("Toast")
                        showButtons = true
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                    
                    
                    
                case 3:
                        Text("You pressed:")
                            .font(.title)
                        ForEach(pressedButtons, id: \.self) { button in
                            Text(button)
                                .font(.headline)
                            
                        }
                        Button("Back") {
                            showButtons = true
                        }
                    
                    
                    
                default:
                    //print("yeah")
                    Text("Safety")
                    //showButtons = true
                
                }
                
                
                
                
                
                //if orderButtonPressed {
                
                //  if pressedButtons.count > 0 {
                //     Text("You pressed:")
                //         .font(.title)
                //     ForEach(pressedButtons, id: \.self) { button in
                //        Text(button)
                //           .font(.headline)
                
                //   }
                // }
                // }
                
                
                // if orderButtonPressed {
                
                //     if pressedButtons.count > 0 {
                //      Text("You pressed:")
                //        .font(.title)
                //     ForEach(pressedButtons, id: \.self) { button in
                //        Text(button)
                //            .font(.headline)
                
                //    }
                // }
                //  }
                
                
                
            
                
                
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
//
//
//
