//
//  SecondView.swift
//  Question App
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct SecondView: View {
    @State private var dogAnswer = ""
    @State private var catAnswer = ""
    @State private var dogPeople = 0
    @State private var catPeople = 0
    var body: some View {
        VStack() {
            Text("Question One :")
            Text("Which pet is better : \ndogs or cats?")
            HStack() {
                Button("Dog") {
                    dogPeople = dogPeople + 1
                    dogAnswer = "You're wrong but I respect your opinion I guess...\nyou and \(dogPeople) other people have the wrong opinion"
                } //dog button closing
                .padding()
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.7333333333333333, green: 0.8156862745098039, blue: 1.0))
                .font(.title3)
                Button("Cat") {
                    catPeople = catPeople + 1
                    catAnswer = "Fantastic amazing the best answer!\nYou and \(catPeople) other people have chosen the better answer"
                }
                .padding()
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.7333333333333333, green: 0.8156862745098039, blue: 1.0))
                .font(.title3)
            } //hstack closing

            if (catAnswer == "Fantastic amazing the best answer!\nYou and \(catPeople) other people have chosen the better answer") {
                Text(catAnswer)
            } //if statement closing
            else if (dogAnswer == "You're wrong but I respect your opinion I guess... \nyou and \(dogPeople) other people share this opinion!"){
                Text(dogAnswer)
            } //else if statement closing
            NavigationLink(destination : ThirdView()) {
                Text("Continue on... →")
                    .font(.title2)
                    .tint(Color.black)
                    .underline()
            } //navlink closing
        } //vstack closing
        .navigationTitle("Question 1")
        .navigationBarHidden(true)
    } //closing bracket
} //closing bracket

//nothing is changed under here
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
