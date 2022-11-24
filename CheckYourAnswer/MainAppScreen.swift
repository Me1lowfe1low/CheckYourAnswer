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
        List {
            ForEach($testsObjects) { $chosenTest in
                NavigationLink(destination: TestDescriptionView(testObjects: $chosenTest) ) {
                    TestElementView(testObject: chosenTest)
                }
            }
        }
        .navigationTitle("Main Application")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button(action: {} ) {
                Image(systemName: "plus")
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
