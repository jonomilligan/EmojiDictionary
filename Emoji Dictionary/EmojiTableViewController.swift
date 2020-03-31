//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Peter Milligan on 2020/03/30.
//  Copyright © 2020 John Milligan. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis : [Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.theEmoji)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! ViewController
        emojiDefVC.emoji = sender as! Emoji
    }
    
    func createEmojis() -> [Emoji] {
        //["😀","😎","🤩","💩","🦍","🏎","🏡","⛪️","⌚️","🥑"]
        let smiley = Emoji()
        smiley.theEmoji = "😀"
        smiley.def = "A happy smiling face!"
        smiley.birthYear = 2010
        smiley.category = "Faces"
        
        let coolface = Emoji()
        coolface.theEmoji = "😎"
        coolface.def = "A cool guy emoji."
        coolface.birthYear = 2010
        coolface.category = "Faces"
        
        let starryface = Emoji()
        starryface.theEmoji = "🤩"
        starryface.def = "Starry eyes!"
        starryface.birthYear = 2010
        starryface.category = "Faces"
        
        let poop = Emoji()
        poop.theEmoji = "💩"
        poop.def = "A poop"
        poop.birthYear = 2014
        poop.category = "Faces"
        
        let gorilla = Emoji()
        gorilla.theEmoji = "🦍"
        gorilla.def = "A humungous gorilla!"
        gorilla.birthYear = 2015
        gorilla.category = "Animals"
        
        let racecar = Emoji()
        racecar.theEmoji = "🏎"
        racecar.def = "A racecar sponsored by Swift"
        racecar.birthYear = 2015
        racecar.category = "Transport"
        
        let avocado = Emoji()
        avocado.theEmoji = "🥑"
        avocado.def = "A nice ripe avocado!"
        avocado.birthYear = 2013
        avocado.category = "Food"
        
        return [smiley,coolface,starryface,poop,gorilla,racecar,avocado]
    }

}
