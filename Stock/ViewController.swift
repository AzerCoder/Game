//
//  ViewController.swift
//  Stock
//
//  Created by A'zamjon Abdumuxtorov on 24/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cpuImage: UIImageView!
    @IBOutlet weak var cpuLabel: UILabel!
    
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var playerLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var playerPoints = 0
    var cpuPoints = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rockButton(_ sender: UIButton) {
        playGame(playerChoice: 1)

    }
    @IBAction func scissorsButton(_ sender: UIButton) {
        playGame(playerChoice: 3)
    }
    @IBAction func paperButton(_ sender: UIButton) {
        playGame(playerChoice: 2)
    }
    
    func playGame(playerChoice: Int){
        let cpuChoice = Int.random(in: 1...3)
    
    
    
    
       
        
        
        setHandImage(imageView: cpuImage, imageNumber: cpuChoice)
        setHandImage(imageView: playerImage, imageNumber: playerChoice)
        
        
        if cpuChoice == playerChoice {
            resultLabel.text = "Durrang"
            resultLabel.backgroundColor = UIColor.systemBlue
                } else if (cpuChoice == 1 && playerChoice == 2) || (cpuChoice == 2 && playerChoice == 3) || (cpuChoice == 3 && playerChoice == 1) {
                    playerPoints += 1
                    playerLabel.text = "You: \(playerPoints)"
                    resultLabel.text = "G'alaba"
                    resultLabel.backgroundColor = UIColor.green
                } else {
                    cpuPoints += 1
                    cpuLabel.text = "CPU: \(cpuPoints)"
                    resultLabel.text = "Mag'lubiyat"
                    resultLabel.backgroundColor = UIColor.red
                }
        

        cpuLabel.text = "CPU \(cpuPoints)"
        playerLabel.text = "You \(playerPoints)"
        
        UIView.transition(with: cpuImage, duration: 0.5, options: .transitionFlipFromTop, animations: nil, completion: nil)
        UIView.transition(with: playerImage, duration: 0.5, options: .transitionFlipFromTop, animations: nil, completion: nil)
        
    }
    func setHandImage(imageView:UIImageView, imageNumber: Int){
        switch imageNumber {
        case 1:
            imageView.image = UIImage(named: "rock")
        case 2:
            imageView.image = UIImage(named: "paper")
        case 3:
            imageView.image = UIImage(named: "scissors")
        default:
            print("Error")
        }
    }
    
    
}

