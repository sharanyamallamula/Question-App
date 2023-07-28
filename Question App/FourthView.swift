//
//  FourthView.swift
//  Question App
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct FourthView: View {
    @State private var minimalistPeople = 0
    @State private var maximalistPeople = 0
    @State private var bothPeople = 0
    @State private var minimalistAnswer = ""
    @State private var maximalistAnswer = ""
    @State private var bothAnswer = ""
    var body: some View {
        VStack() {
            Text("Question Three :")
                .font(.title)
            Text("Last question! Are you a minimalist, maximalist, or both?")
                .padding()
                .font(.title3)
            HStack() {
                Button("Minimalist") {
                    minimalistPeople = minimalistPeople + 1
                    minimalistAnswer = "Yay! Minimalism is pretty\n\(minimalistPeople)Have the same opinion."
                } //minimalist button closing
                .padding()
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.7333333333333333, green: 0.8156862745098039, blue: 1.0))
                .font(.title3)
                Button("Maximalist") {
                    maximalistPeople = maximalistPeople + 1
                    maximalistAnswer = "Maximalism is so cool if ur maximalist ur cool\n\(maximalistAnswer) people think the same way"
                } //maximalist button closing
                .padding()
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.7333333333333333, green: 0.8156862745098039, blue: 1.0))
                .font(.title3)
                Button("Both") {
                    bothPeople = bothPeople + 1
                    bothAnswer = "Honestly me too I can never choose between minimalism and maximalism...\n\(bothPeople) people think the same way!"
                } //both button closing
                .padding()
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.7333333333333333, green: 0.8156862745098039, blue: 1.0))
                .font(.title3)
            } //hstack closing
            if minimalistAnswer == "Yay! Minimalism is pretty\n\(minimalistPeople)Have the same opinion." {
                Text(minimalistAnswer)
            } //if statement closing
            else if maximalistAnswer == "Maximalism is so cool if ur maximalist ur cool\n\(maximalistAnswer) people think the same way" {
                Text(maximalistAnswer)
            } //else if statement closing
            else if bothAnswer == "Honestly me too I can never choose between minimalism and maximalism...\n\(bothPeople) people think the same way!" {
                Text(bothAnswer)
            } //else if statement closing
            
            NavigationLink(destination : FinalView()) {
                Text("Continue on... →")
                    .font(.title2)
                    .tint(Color.black)
                    .underline()
            } //navlink closing
            
        .navigationTitle("Question 3")
        .navigationBarHidden(true)
        } //vstack closing
    }// closing bracket
}// closing bracket

//nothing is touched under here
struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
