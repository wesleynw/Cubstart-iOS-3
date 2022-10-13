//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var num: Double = 50
    @State var toggle = false
    
    var body: some View {
        VStack() {
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding([.top, .leading], 20)
                
                Spacer()
                
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
                .padding([.top, .trailing], 20)
            }
            
            Spacer()
            Text("Move the slider to:")
                .font(.title)
            Text("25")
                .font(.title)
            Slider(
                value: $num,
                in: 0...100)
            .padding(.horizontal)
            
            
                        Button(action: checkNum) {
                            Text("Check")
                        }
                        .padding(.top)
            
            Spacer()
            VStack() {
                Text("Exact Mode?")
                Toggle("", isOn: $toggle).labelsHidden()

//                Toggle("", isOn: $toggle)
            }
            
        }
    }
    func checkNum() {
//        num += 1
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
