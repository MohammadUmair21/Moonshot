//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Umair on 28/03/24.
//

import Foundation

extension Bundle {
    func decode <T : Codable> (_ file : String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) from the bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from the bundle.")
        }
        
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(T.self, from : data) else {
            fatalError("Failed to decode \(file) from the bundle.")
        }
        
        return loaded
    }
}
