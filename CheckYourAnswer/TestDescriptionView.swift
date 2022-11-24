//
//  TestDescriptionView.swift
//  CheckYourAnswer
//
//  Created by Дмитрий Гордиенко on 24.11.2022.
//

import SwiftUI

struct TestDescriptionView: View {
    //@State var testsObjects = TestDetails
    @Binding var testObjects : TestDetails
    
    var body: some View {
        List {
            ForEach($testObjects.questionList) { $exactQuestion in
                NavigationLink(destination: AnswerQuestionView(question: $exactQuestion ) ) {
                    QuestionView(questionView: $exactQuestion )
                }
            }
        }
    }
}

struct TestDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TestDescriptionView(testObjects: .constant(TestDetails.SampleOfData[0]))
        }
    }
}
