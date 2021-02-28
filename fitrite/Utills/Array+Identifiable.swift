//
//  Array+Identifiable.swift
//  fitrite
//
//  Created by Oskar Skowronski on 26/02/2021.
//

import Foundation

extension Array where Element : Identifiable{
    func firstIndex(matching: Element) -> Int?{
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
