//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Bettina on 3/15/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var partyRocks = [PartyRock]()
    @IBOutlet weak var tableView: UITableView! // weak b/c vc is holding weak reference to tv itself. if self.view goes out of memory, iboutlets sit on top of the view and also holds reference. don't need both to hold strong reference, because if that view goes out of memory or labels also disappear will cause memory leaks...prevent memory leaks
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let urlTest = "<div style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src= \"https://www.youtube.com/embed/KQ6zr6kCPj8?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen></iframe></div>"
        
        let p1 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: urlTest, videoTitle: "Party Rock Anthem")
        let p2 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: urlTest, videoTitle: "Party Rock Anthem")
        let p3 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: urlTest, videoTitle: "Party Rock Anthem")
        let p4 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: urlTest, videoTitle: "Party Rock Anthem")
        let p5 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: urlTest, videoTitle: "Party Rock Anthem")
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "partyCell", for: indexPath) as? PartyTableViewCell {
            let anotherPartyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: anotherPartyRock)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

