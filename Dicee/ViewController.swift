
//Dicee game

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var leftDiceNumber=0
    var rightDiceNumber=5
    override func viewDidLoad()
    {
        super.viewDidLoad()
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
    }
    @IBAction func rollButtonPressed(_ sender: Any)
    {
        let left = Int.random(in: 0...5)
        let right = Int.random(in: 0...5)
        let dice :[UIImage] = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = dice[left]
        diceImageView2.image = dice[right]
        /*if leftDiceNumber == 6
        {
            leftDiceNumber = 0
        }
        if rightDiceNumber == -1
        {
            rightDiceNumber = 5
        }
        diceImageView1.image = dice[leftDiceNumber]
        diceImageView2.image = dice[rightDiceNumber]
        leftDiceNumber = leftDiceNumber + 1
        rightDiceNumber = rightDiceNumber - 1*/
        
        /*print("BUTTON GOT TAPPED.")
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceSix")*/
    }
    

}

