//
//  CardViewModel.swift
//  Santander
//
//  Created by Marcelo Junior on 30/07/23.
//

import Then
import Combine
import Foundation

final class CardViewModel: ObservableObject {
    
    @Published var card: Card?
    
    var number: String {
        "Cartão final \(card?.number.suffix(4) ?? "0000")"
    }
    
    var limit: String {
        card?.limit.toCurrency() ?? "R$ 0,00"
    }
    
}

// MARK: - Then

extension CardViewModel: Then { }
