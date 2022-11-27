//
//  BundleDecoder.swift
//  CheckYourAnswer
//
//  Extension on Bundle that will help us decode data from json file
//

import Foundation

extension Bundle {
    func decode(_ filename: String) -> [TestDetails] {
        // Finding file
        guard let exampleURL = self.url(forResource: filename, withExtension: "json") else {
        fatalError("Couldn't find \(filename) in the bundle folder")
        }
        
        //Gathering content of the file in the data object
        guard let dataObject = try? Data(contentsOf: exampleURL) else {
            fatalError("Couldn't recieve data from \(filename)")
        }
        
        let decoder = JSONDecoder()
        
        //File couldn't be decoded - crash
        guard let samplesOfTests = try? decoder.decode([TestDetails].self, from: dataObject) else {
            fatalError("Couldn't decode data from the 'JsonExample.json'")
        }
        
        return samplesOfTests
    }
    
    
    
    
    
}
