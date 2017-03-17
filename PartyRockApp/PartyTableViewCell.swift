//
//  PartyTableViewCell.swift
//  PartyRockApp
//
//  Created by Bettina on 3/16/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import UIKit

class PartyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        // TO DO: set image from url, always put downloading items on async/background thread to prevent app slowing down. background threads can't update UI (only do operations) so will have to hop back on main thread to update UI once info is downloaded.
        
        let url = URL(string: partyRock.imageURL)!
        DispatchQueue.global().async {
            do { //throws means it can throw an error, handle with do try catch to catch error
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    //once data is downloaded, add it back to main thread (sync) to update UI
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //handle the error
                
            }
            
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
