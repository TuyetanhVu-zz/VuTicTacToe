//
//  ViewController.swift
//  Vu Tic Tac Toe
//
//  Created by Tuyetanh Vu on 1/27/18.
//  Copyright © 2018 Tuyetanh Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activePlayer = 1 //cross
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    let winCombinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    var gameActive = true
    
    
    @IBAction func action(_ sender: Any) {
        
        if (gameState[(sender as AnyObject).tag-1] == 0 && gameActive == true){
            
            gameState[(sender as AnyObject).tag-1] = activePlayer
            
            if (activePlayer == 1)
            {
                (sender as AnyObject).setImage(UIImage(named: "x letter.png"), for: UIControlState())
                activePlayer = 2
            }else{
                (sender as AnyObject).setImage(UIImage(named: "o letter.png"), for: UIControlState())
                activePlayer = 1
            }
            
        }
        
        for combination in winCombinations{
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]{
                
                gameActive = false
                
                if gameState[combination[0]] == 1{
                    //cross won
                    print("cross")
                }else{
                    //circle won
                    print("circle")
                }
                
            }
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

