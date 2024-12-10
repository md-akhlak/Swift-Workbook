//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Batch - 1 on 10/12/24.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    
    var book: Book?
    
    @IBOutlet var TextFieldOutletForTitle: UITextField!
    
    @IBOutlet var TextFieldOutletForAuthor: UITextField!
    
    @IBOutlet var TextFieldOutletForGenre: UITextField!
    
    @IBOutlet var TextFieldOutletForLength: UITextField!
    

    init?(coder: NSCoder, book: Book?) {
        self.book = book
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.book = nil
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        guard let book = book else {return}
        
        TextFieldOutletForTitle.text = book.title
        TextFieldOutletForAuthor.text = book.author
        TextFieldOutletForGenre.text = book.genre
        TextFieldOutletForLength.text = book.length
    }

    
    
    @IBAction func SaveButtonAction(_ sender: Any) {
        
        guard let title = TextFieldOutletForTitle.text,
              let author = TextFieldOutletForAuthor.text,
              let genre = TextFieldOutletForGenre.text,
              let length = TextFieldOutletForLength.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        
    }
}
