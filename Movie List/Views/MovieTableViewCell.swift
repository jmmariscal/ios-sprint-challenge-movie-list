//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Juan M Mariscal on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    // MARK: IBOutlets
    
    @IBOutlet weak var movieSeenBtn: UIButton!
    @IBOutlet weak var movieNameLabel: UITextField!
    
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    func updateViews() {
        guard let movie = movie else { return }
        
        movieNameLabel.text = movie.movieName[0]
        movieSeenBtn.titleLabel?.text = "Not Seen"
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    @IBAction func movieSeenTapped(_ sender: Any) {
        if movieSeenBtn.titleLabel?.text == "Not Seen"{
            movieSeenBtn.titleLabel?.text = "Seen"
        } else if movieSeenBtn.titleLabel?.text == "Seen"{
            movieSeenBtn.titleLabel?.text = "Not Seen"
        }
//        if movieSeenBtn = false {
//            movieSeenBtn.titleLabel?.text = "Not Seen"
//        } else if movieSeenBtn = true {
//            movieSeenBtn.titleLabel?.text = "Seen"
//        }
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
