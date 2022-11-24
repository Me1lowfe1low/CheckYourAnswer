//
//  QuestionView.swift
//  CheckYourAnswer
//
//  Created by Дмитрий Гордиенко on 24.11.2022.
//

import SwiftUI

struct AnswerQuestionView: View {
    @Binding var question : TestDetails.Question
    
    var body: some View {
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: 40)
                    .fill(Gradient(colors: [.blue,.green]).shadow(.drop(color: .blue, radius: 10)))
                Text(question.question)
                    .scaledToFit()
            }
            .padding()
            List {
                ForEach($question.answersList) { $answer in
                    AnswerView(answer: $answer)
                        .onTapGesture{
                           // Action
                        }
                }
            }
            Button(action: {}, label: {Text("Check")} )
        }
        .navigationTitle(String("Question #\($question.id)"))
        //.navigationBarTitleDisplayMode(.inline)
    }
}

struct AnswerQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AnswerQuestionView(question: .constant(TestDetails.SampleOfData[0].questionList[1]))
        }
    }
}
