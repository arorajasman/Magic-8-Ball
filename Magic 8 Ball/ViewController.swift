//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // the code below is used to create an array that
    // stores the list of names of images of balls
    let ballArray: [String] = ["ball1","ball2","ball3","ball4","ball5"]


    // the code below is used to create an IBOutlet for the
    // image ball that will be used to answer the queries
    // made by the user
    @IBOutlet weak var answerBallimageView: UIImageView!
    
    
    // the code below is used to create a method
    // of type IBAction that will be called when
    // the ask button is pressed
    @IBAction func askButtonOnPressedHandler(_ sender: UIButton) {
        
        // the code is used to create a property for getting the random index value to show the
        // ransom images of the ball from the ballArray
        let randomIndex = Int.random(in: 0 ... 4)  // here we are using the random() method from the
        // Int class for getting a random index value between 0 and 4 including both 0 and 4 as well
        
        // the below line of code is for debugging purpose
        print("Ask button Pressed")
        
        // the below line of code is for debugging purpose
        print("the current value of random index is: \(randomIndex)")
        
        // the code below is to use the image property of the answerBallimageView variable for
        // changing the image of the answer ball when the ask button is clicked
        // answerBallimageView.image = UIImage(named: ballArray[2])  // here we are using the UIImage()
        // object and passing the name of the image as a value to the named variable for showing
        // the image of the ball at index of the ballArray when the ask button is pressed
        
        
        // the code below is to use the randomIndex value for getting the image name at randomIndex
        // for ballArray for displaying the random images of the ball when the ask button is clicked
        answerBallimageView.image = UIImage(named: ballArray[randomIndex])  // here we are using the UIImage()
        // object and passing the name of the image as a value to the named variable for showing
        // the image of the ball at index of the ballArray when the ask button is pressed
    }
}

