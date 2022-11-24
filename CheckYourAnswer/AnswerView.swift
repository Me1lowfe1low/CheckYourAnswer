//
//  AnswerView.swift
//  CheckYourAnswer
//
//  Created by Дмитрий Гордиенко on 24.11.2022.
//

import SwiftUI

struct AnswerView: View {
    var body: some View {
        HStack {
            Label("Answer #", systemImage: "questionmark.circle")
            Divider()
            Text("Asnwer text")
                .padding()
        }
    }
}


struct AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerView()
    }
}
