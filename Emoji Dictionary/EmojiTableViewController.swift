//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Peter Milligan on 2020/03/30.
//  Copyright © 2020 John Milligan. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["😀","😎","🤩","💩","🦍","🏎","🏡","⛪️","⌚️"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ourSegue", sender: nil)
    }

}
