//
//  ContentView.swift
//  Question App
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack{
            VStack() {
                Text("Welcome to the...\n Question App!")
                    .font(.title)
                    .multilineTextAlignment(.center)
                ZStack() {
                    Text("This app will ask you a series of questions. Choose carefully!")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding()
                } //zstack closing
                .background(Rectangle() .foregroundColor(.purple))
                .cornerRadius(15.0)
                NavigationLink(destination: SecondView()) {
                    Text("Get started →")
                        .font(.title2)
                        .tint(Color.black)
                        .underline()
                } //navlink closing
            } //vstack closing
            .navigationTitle("Home")
            .navigationBarHidden(true)
        } //navstack closing
    } //closing bracket
} //closing bracket

// nothing is changed under here
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
