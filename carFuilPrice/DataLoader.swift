//
//  DataLoader.swift
//  carFuilPrice
//
//  Created by Anıl AVCI on 21.07.2022.
//

import Foundation

public class DataLoader {
    @Published var userData = [UserData]()
    init() {
        load()
    }
    
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "mydata", withExtension: "json") {
            do {
            
            let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([UserData].self, from: data)
                self.userData = dataFromJson
        } catch {
            print(error)
        }
        }
         
    }
}
