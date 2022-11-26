//
//  TestDescriptionView.swift
//  CheckYourAnswer
//
//  Created by Дмитрий Гордиенко on 24.11.2022.
//

import SwiftUI

struct TestDescriptionView: View {
    @Binding var testObjects : TestDetails
    
    var body: some View {
        List {
            ForEach($testObjects.questionList.indices) { exactQuestionId in
                NavigationLink(destination: AnswerQuestionView(question: $testObjects.questionList[exactQuestionId], currentQuestionId: exactQuestionId  ) ) {
                    QuestionView(questionView: $testObjects.questionList[exactQuestionId],  questionNumber: exactQuestionId )
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
