//
//  AnswerModel.swift
//  CheckYourAnswer
//
//  Created by Дмитрий Гордиенко on 24.11.2022.
//

import Foundation

struct TestDetails: Identifiable {
    let id: UUID
    var title: String
    var questionList: [QuestionsList]
    private var isDefault: Bool = false
    
    init(id: UUID = UUID(), title: String, questionList: [QuestionsList], isDefault: Bool) {
        self.id = id
        self.title = title
        self.questionList = questionList
        self.isDefault = isDefault
    }
}

extension TestDetails {
    struct QuestionsList: Identifiable {
        let id: UUID
        var question: String
        var answersList: [AnswersList]
        
        init(id: UUID = UUID(), question: String, answersList: [AnswersList]){
            self.id = id
            self.question = question
            self.answersList = answersList
        }
    }
    
    struct AnswersList {
        var id: UUID
        var answer: String
        var isCorrect: Bool
        
        init(id: UUID = UUID(), answer: String, isCorrect: Bool) {
            self.id = id
            self.answer = answer
            self.isCorrect = isCorrect
        }
    }
}


extension TestDetails {
    static let SampleOfData: [TestDetails] =
    [ TestDetails(title: "Test in Maths",
                  questionList:
                    [QuestionsList(question: "Eighteen thousandths, written as a decimal, is:", answersList: [
                        AnswersList(answer: "0.0018", isCorrect: false),
                        AnswersList(answer: "0.018", isCorrect: true),
                        AnswersList(answer: "0.18", isCorrect: false)
                    ]),
                    QuestionsList(question: "The next number in the sequence <b>1, 3, 6, 10, </b> is:", answersList: [
                        AnswersList(answer: "12", isCorrect: false),
                        AnswersList(answer: "13", isCorrect: false),
                        AnswersList(answer: "14", isCorrect: false),
                        AnswersList(answer: "15", isCorrect: true)
                    ]),
                     QuestionsList(question: "2 + 2 = X? Correct answer is :", answersList: [
                         AnswersList(answer: "4", isCorrect: true),
                         AnswersList(answer: "3", isCorrect: false),
                         AnswersList(answer: "2", isCorrect: false),
                         AnswersList(answer: "1", isCorrect: false)
                     ])
                    ],
                  isDefault: true),
      TestDetails(title: "Test in Geography",
                    questionList:
                      [QuestionsList(question: "What is the capital of Bhutan?", answersList: [
                          AnswersList(answer: "Banjul", isCorrect: false),
                          AnswersList(answer: "Cockburn Town", isCorrect: false),
                          AnswersList(answer: "Gaborone", isCorrect: false),
                          AnswersList(answer: "Thimphu", isCorrect: true)
                      ]),
                      QuestionsList(question: "What is the capital of Pitcairn?", answersList: [
                          AnswersList(answer: "Guatemala City", isCorrect: false),
                          AnswersList(answer: "Kuwait City", isCorrect: false),
                          AnswersList(answer: "Adamstown", isCorrect: true),
                          AnswersList(answer: "Zagreb", isCorrect: false)
                      ]),
                       QuestionsList(question: "What is the capital of Panama?", answersList: [
                           AnswersList(answer: "Brazzavile", isCorrect: false),
                           AnswersList(answer: "Panama City", isCorrect: true),
                           AnswersList(answer: "Vaduz", isCorrect: false),
                           AnswersList(answer: "Yaren", isCorrect: false)
                       ])
                      ],
                    isDefault: true)
    ]
}
