//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by Henrique Dos Santos on 9/14/18.
//  Copyright © 2018 HdosSant Co. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    
    var player: Player! //we make it an implicitly unwrapped beacause we don't want it to run unless there is a player type selected

    @IBOutlet weak var nextBtn: BorderButton!
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillViewControllerSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()

    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
