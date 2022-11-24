//
//  QuestionView.swift
//  CheckYourAnswer
//
//  Created by Дмитрий Гордиенко on 24.11.2022.
//

import SwiftUI

struct QuestionView: View {
    @Binding var questionView: TestDetails.Question
    var questionNumber: Int
    
    var body: some View {
        HStack {
            Label("\(questionNumber)", systemImage: "number")
            Divider()
            Text(questionView.question)
        }
        .padding()
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(questionView: .constant(TestDetails.SampleOfData[0].questionList[0]), questionNumber: 1)
    }
}
