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
    var questionList: [Question]
    private var isDefault: Bool = false
    
    init(id: UUID = UUID(), title: String, questionList: [Question], isDefault: Bool) {
        self.id = id
        self.title = title
        self.questionList = questionList
        self.isDefault = isDefault
    }
}

extension TestDetails {
    struct Question: Identifiable {
        let id: UUID
        var question: String
        var answersList: [Answer]
        
        init(id: UUID = UUID(), question: String, answersList: [Answer]){
            self.id = id
            self.question = question
            self.answersList = answersList
        }
    }
    
    struct Answer: Identifiable {
        let id: UUID
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
                    [Question(question: "Eighteen thousandths, written as a decimal, is:", answersList: [
                        Answer(answer: "0.0018", isCorrect: false),
                        Answer(answer: "0.018", isCorrect: true),
                        Answer(answer: "0.18", isCorrect: false)
                    ]),
                    Question(question: "The next number in the sequence <b>1, 3, 6, 10, </b> is:", answersList: [
                        Answer(answer: "12", isCorrect: false),
                        Answer(answer: "13", isCorrect: false),
                        Answer(answer: "14", isCorrect: false),
                        Answer(answer: "15", isCorrect: true)
                    ]),
                     Question(question: "2 + 2 = X? Correct answer is :", answersList: [
                         Answer(answer: "4", isCorrect: true),
                         Answer(answer: "3", isCorrect: false),
                         Answer(answer: "2", isCorrect: false),
                         Answer(answer: "1", isCorrect: false)
                     ])
                    ],
                  isDefault: true),
      TestDetails(title: "Test in Geography",
                    questionList:
                      [Question(question: "What is the capital of Bhutan?", answersList: [
                          Answer(answer: "Banjul", isCorrect: false),
                          Answer(answer: "Cockburn Town", isCorrect: false),
                          Answer(answer: "Gaborone", isCorrect: false),
                          Answer(answer: "Thimphu", isCorrect: true)
                      ]),
                      Question(question: "What is the capital of Pitcairn?", answersList: [
                          Answer(answer: "Guatemala City", isCorrect: false),
                          Answer(answer: "Kuwait City", isCorrect: false),
                          Answer(answer: "Adamstown", isCorrect: true),
                          Answer(answer: "Zagreb", isCorrect: false)
                      ]),
                       Question(question: "What is the capital of Panama?", answersList: [
                           Answer(answer: "Brazzavile", isCorrect: false),
                           Answer(answer: "Panama City", isCorrect: true),
                           Answer(answer: "Vaduz", isCorrect: false),
                           Answer(answer: "Yaren", isCorrect: false)
                       ])
                      ],
                    isDefault: true)
    ]
}
