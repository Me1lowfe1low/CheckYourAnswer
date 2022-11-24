//
//  TestElementView.swift
//  CheckYourAnswer
//
//  Created by Дмитрий Гордиенко on 24.11.2022.
//

import SwiftUI

struct TestElementView: View {
    var testObject : TestDetails
    
    var body: some View {
        VStack {
            Text(testObject.title)
            Divider()
            HStack {
                Label("\(testObject.questionList.count) questions", systemImage: "questionmark.circle")
                Spacer()
                Label("\(testObject.questionList.count*5) min", systemImage: "timer")
            }
            .font(.caption)
        }
        .padding()
    }
}

struct TestElementView_Previews: PreviewProvider {
    static var previews: some View {
        TestElementView(testObject: TestDetails.SampleOfData[1])
    }
}
