//
//  MainAppScreen.swift
//  CheckYourAnswer
//
//  Created by Дмитрий Гордиенко on 24.11.2022.
//

import SwiftUI

struct MainAppScreen: View {
    @Binding var testsObjects : [TestDetails]
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .fill(Gradient(colors: [.blue,.green]).shadow(.drop(color: .blue, radius: 10))).padding()
                Text("Check\n Your\n Answer")
                    .font(.largeTitle)
                    .rotationEffect(.degrees(-15))
                    .bold()
            }
            List {
                ForEach($testsObjects) { $chosenTest in
                    NavigationLink(destination: TestDetailsView(testDetails: $chosenTest) ) {
                        TestElementView(testObject: chosenTest)
                    }
                }
            }
            .navigationTitle("Check Your Answer")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button(action: {} ) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct MainAppScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MainAppScreen(testsObjects: .constant(TestDetails.SampleOfData))
        }
    }
}
