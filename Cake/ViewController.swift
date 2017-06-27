//
//  ViewController.swift
//  Cake
//
//  Created by Simon Larsson on 2017-06-27.
//  Copyright © 2017 Simon Larsson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    populateText()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func populateText() -> Void {
    // Get date pieces.
    let date = Date()
    let calendar = Calendar.current
    let components = calendar.dateComponents([.weekday, .hour], from: date)

    // Set date variables.
    let hour =  components.hour
    let day = components.weekday

    // Default value.
    var cake: Bool = false

    // If day is right, it´s a go.
    let hours = 9...15
    let days = [2,3,5,6]
    if hours.contains(hour!) && days.contains(day!) {
      cake = true
    }

    // Create message.
    let message = cake ? "Yes, let there be cake!" : "No, Simon is not here!"
    cake ? (MainText.textColor = UIColor.green) : (MainText.textColor = UIColor.red)

    MainText.text = message
  }


  @IBOutlet weak var MainText: UILabel!
}

