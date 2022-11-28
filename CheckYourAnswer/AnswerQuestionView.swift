//
//  QuestionView.swift
//  CheckYourAnswer
//
//  Created by Дмитрий Гордиенко on 24.11.2022.
//

import SwiftUI

struct AnswerQuestionView: View {
    @Binding var question : TestDetails.Question
    var currentQuestionId: Int
    
    var body: some View {
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: 40)
                    .fill(Gradient(colors: [.blue,.green]).shadow(.drop(color: .blue, radius: 10)))
                Text(question.question)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .padding()
            List {
                ForEach($question.answersList) { $answer in
                    AnswerView(answer: $answer)
                        .multilineTextAlignment(.center)
                        .onTapGesture{
                           // Action
                        }
                }
            }
            Button(action: {}, label: {Text("Continue")} )
        }
        .navigationTitle(String("Question #\(currentQuestionId)"))
        //.navigationBarTitleDisplayMode(.inline)
    }
}

struct AnswerQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AnswerQuestionView(question: .constant(TestDetails.SampleOfData[0].questionList[1]), currentQuestionId: 1)
        }
    }
}
