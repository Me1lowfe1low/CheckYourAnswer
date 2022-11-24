//
//  AnswerView.swift
//  CheckYourAnswer
//
//  Created by Дмитрий Гордиенко on 24.11.2022.
//

import SwiftUI

struct AnswerView: View {
    var answer: TestDetails.Answer

    var body: some View {
        HStack {
            Label("", systemImage: "questionmark.circle")
            Divider()
            Text(answer.answer)
                .padding()
        }
    }
}


struct AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerView(answer: TestDetails.SampleOfData[0].questionList[0].answersList[0])
    }
}
