//
//  TreeModel.swift
//  TreeInfo
//
//  Created by Mark DiFranco on 2024-05-08.
//

import SwiftUI

struct TreeModel: Identifiable {
    let name: String
    let commonName: String
    let description: String
    let image: ImageResource

    var id: String { name }
}

extension TreeModel {
    static let all = [
        TreeModel.palmTree
    ] 
}

extension TreeModel {
    static let palmTree = TreeModel(
        name: "Palm Tree",
        commonName: "Palmus Treeus",
        description: "Palm trees are normally found in warmer climates.",
        image: .palmTree
    )
}
