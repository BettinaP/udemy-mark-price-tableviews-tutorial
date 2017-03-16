//
//  PartyRock.swift
//  PartyRockApp
//
//  Created by Bettina on 3/16/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import Foundation

class PartyRock { 
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String { //getter keeps outside classes from manipulating our data, very important because
        return _imageURL
    }
    
    var videoURL: String{
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
