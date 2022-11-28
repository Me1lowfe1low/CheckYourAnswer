//
//  TestModifiact.swift
//  CheckYourAnswer
//
//  Created by Дмитрий Гордиенко on 27.11.2022.
//

import SwiftUI

struct TestDetailsView: View {
    @Binding var testDetails : TestDetails
    
    var body: some View {
        VStack {
            Form {
                Section("Brief info", content: {
                    HStack {
                        Label("\(testDetails.questionList.count) questions", systemImage: "questionmark.circle")
                        Spacer()
                        Label("\(testDetails.questionList.count*5) min", systemImage: "timer")
                    }
                })
                .padding()
                Section("Description", content: {
                    Text("This filed will contain detailed information about this test")
                })
                Section("Test progress", content: {
                    Text("This filed should contain information about users' test progress. Possibly - the link to another window or pie-chart with statistics of correct/wrong answers or not yet answered questions with overwall statistics of amount of tries")
                })
                Section("Question list", content: {
                    ForEach($testDetails.questionList.indices) { exactQuestionId in
                            QuestionView(questionView: $testDetails.questionList[exactQuestionId],  questionNumber: exactQuestionId )
                    }
                })
            }
            .toolbar{
                    Button(action: {} ) {
                        Image(systemName: "square.and.pencil")
                }
            }
            NavigationLink(destination: AnswerQuestionView(question: $testDetails.questionList[0], currentQuestionId: 0  ) ) {
                Text("Start test")
            }
        }
        .navigationTitle("\(testDetails.title)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TestModifiact_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TestDetailsView(testDetails: .constant(TestDetails.SampleOfData[0]))
        }
    }
}
