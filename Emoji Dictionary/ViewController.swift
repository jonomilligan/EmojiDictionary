//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Peter Milligan on 2020/03/30.
//  Copyright © 2020 John Milligan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefLabel: UILabel!
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //["😀","😎","🤩","💩","🦍","🏎","🏡","⛪️","⌚️"]
        
        if emoji == "😀" {
            emojiDefLabel.text = "A smiley face!"
        }
        if emoji == "😎" {
            emojiDefLabel.text = "A cool guy"
        }
        if emoji == "🤩" {
            emojiDefLabel.text = "Starry eyes"
        }
        if emoji == "💩" {
            emojiDefLabel.text = "A poop"
        }
        if emoji == "🦍" {
            emojiDefLabel.text = "A huge gorilla!"
        }
        if emoji == "🏎" {
            emojiDefLabel.text = "A racecar sponsored by swift"
        }
        if emoji == "🏡" {
            emojiDefLabel.text = "A house"
        }
        if emoji == "⛪️" {
            emojiDefLabel.text = "A church"
        }
        if emoji == "⌚️" {
            emojiDefLabel.text = "A watch"
        }
        emojiLabel.text = emoji

    }
    
    
    

}
