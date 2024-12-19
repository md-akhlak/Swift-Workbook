//
//  ViewController.swift
//  Table Views
//
//  Created by Batch - 1 on 09/12/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    
    @IBOutlet var tableViewOutlet: UITableView!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        emojis.count
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojisCell", for: indexPath)
        let emoji = emojis[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(emoji.symbol) - \(emoji.name)"
        content.secondaryText = emoji.description
        cell.contentConfiguration = content
        
        cell.showsReorderControl = true
        
        
        return cell
        
    }
    
    
   
    
    var emojis : [Emoji] = [
                Emoji(symbol: "😀", name: "Grinning Face",description: "A typical smiley face.", usage: "happiness"),
                Emoji(symbol: "😕", name: "Confused Face",description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
                Emoji(symbol: "😍", name: "Heart Eyes",description: "A smiley face with hearts for eyes.",usage: "love of something; attractive"),
                Emoji(symbol: "🧑‍💻", name: "Developer",description: "A person working on a MacBook (probably using Xcode to write iOS apps in Swift).", usage: "apps, software,programming"),
                Emoji(symbol: "🐢", name: "Turtle", description:"A cute turtle.", usage: "something slow"),
                Emoji(symbol: "🐘", name: "Elephant", description:"A gray elephant.", usage: "good memory"),
                Emoji(symbol: "🍝", name: "Spaghetti",description: "A plate of spaghetti.", usage: "spaghetti"),
                Emoji(symbol: "🎲", name: "Die", description: "A single die.", usage: "taking a risk, chance; game"),
                Emoji(symbol: "⛺️", name: "Tent", description: "A mall tent.", usage: "camping"),
                Emoji(symbol: "📚", name: "Stack of Books",description: "Three colored books stacked on each other.",usage: "homework, studying"),
                Emoji(symbol: "💔", name: "Broken Heart",description: "A red, broken heart.", usage: "extreme sadness"),
                Emoji(symbol: "💤", name: "Snore",description:"Three blue \'z\'s.", usage: "tired, sleepiness"),
                Emoji(symbol: "🏁", name: "Checkered Flag",description: "A black-and-white checkered flag.", usage:"completion")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOutlet.dataSource = self
        
        
        navigationItem.leftBarButtonItem  = editButtonItem
        
        
    }


}

