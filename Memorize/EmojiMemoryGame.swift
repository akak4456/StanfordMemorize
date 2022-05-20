//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Choi Ayoung on 2022/05/20.
//

import SwiftUI


class EmojiMemoryGame {
  static let emojis: [String] = ["🚗","🚕","🚙","🚌","🚎","🏎","🚓","🚑","🚒","🚐","🛻","🚚","🚛","🚜","🦽"
                          ,"🦼","🛴","🚲","🛵","🏍","🛺","🚔","🚍","🚘"]
  
  static func createMemoryGame() -> MemoryGame<String> {
    MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
      emojis[pairIndex]
    }
  }
  
  private var model: MemoryGame<String> = createMemoryGame()
  
  var cards: Array<MemoryGame<String>.Card> {
    return model.cards
  }
}
