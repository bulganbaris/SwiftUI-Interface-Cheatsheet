//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Barış Bulgan on 16.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State var alertIsOn = false
    @State var uThin = "*Ultra thin*"
    var body: some View {
        ZStack{
            VStack(spacing:0){
                Color.indigo.ignoresSafeArea()
                Color.orange.ignoresSafeArea()
            }
            VStack(spacing:60){
                Text("*GRADIENTED**")
                    .padding(50)
                    .font(.largeTitle)
                    .foregroundStyle(.linearGradient(colors: [.orange,.blue, .pink, .indigo], startPoint: .leading, endPoint: .trailing))
                    .background(.ultraThickMaterial)
                Text(uThin)
                    .padding(50)
                    .font(.largeTitle)
                    .background(.ultraThinMaterial)
                HStack(spacing:20){
                    Button("Delete", role: .destructive){
                        alertIsOn = true
                    }
                    .buttonStyle(.borderedProminent)
                    .alert("Confirmation", isPresented: $alertIsOn){
                        Button("Delete", role: .destructive){uThin = ""}
                        Button("Cancel", role: .cancel){}
                    }message: {
                        Text("Please confirm to delete this item")
                    }
                    
                    Button("Bordered", action: doSth)
                        .buttonStyle(.bordered)
                        .tint(.indigo)
                    
                    Button{}label: {
                        Label("Labeled", systemImage: "pencil").padding(5)
                    }
                }
                Button{}label: {
                    Text("**TextView as a label**").padding(30)
                        .foregroundColor(.white)
                        .background(.black)
                }
                
            }
 
                
        }
        
    }
    func doSth(){
        print("Sth")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            ContentView()
        }
        
    }
}
