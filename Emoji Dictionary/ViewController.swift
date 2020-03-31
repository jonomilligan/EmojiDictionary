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
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.theEmoji
        emojiDefLabel.text = emoji.def
        birthLabel.text = "Birth year: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"

    }
    
    
    

}
