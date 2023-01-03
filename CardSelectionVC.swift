//
//  CardSelectionVC.swift
//  CardWworkout
//
//  Created by Cristian Macovei on 21.11.2022.
//

import UIKit

class CardSelectionVC: UIViewController {

    //UI Objects
    @IBOutlet var cardImageView: UIImageView!
    //Array including all buttons
    @IBOutlet var buttons: [UIButton]!
    
    var cards: [UIImage] = Card.allValues
    
    var timer: Timer!
    
    //First load function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startTimer()
        
        for i in buttons {
            i.layer.cornerRadius = 8
        }
        
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    //Object functions
    @IBAction func stopButtonTapped(_ sender: Any) {
        timer.invalidate()
    }
    
    
    @IBAction func restartButtonTapped(_ sender: Any) {
        timer.invalidate()
        startTimer()
    }
}
