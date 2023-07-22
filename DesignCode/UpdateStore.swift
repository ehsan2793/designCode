//
//  UpdateStore.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/22/23.
//

import Combine
import SwiftUI

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
