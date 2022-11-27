//
//  CheckYourAnswerApp.swift
//  CheckYourAnswer
//
//  Created by Дмитрий Гордиенко on 24.11.2022.
//

import SwiftUI

@main
struct CheckYourAnswerApp: App {
    //@State var dataExample : [TestDetails] = TestDetails.SampleOfData
    @State var dataExample = Bundle.main.decode("JsonExample")
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                MainAppScreen(testsObjects: $dataExample)
            }
        }
    }
}
