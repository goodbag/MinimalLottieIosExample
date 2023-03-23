//
//  ViewController.swift
//  LottieIos
//
//  Created by Johannes Herrnegger on 23.03.23.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    private var animationView: LottieAnimationView?

    override func viewDidLoad() {

      super.viewDidLoad()
      
      // 2. Start LottieAnimationView with animation name (without extension)
      animationView = .init(name: "earth_loading", subdirectory: "Animations")
      animationView!.frame = view.bounds
      
      // 3. Set animation content mode
      animationView!.contentMode = .scaleAspectFit
      
      // 4. Set animation loop mode
      animationView!.loopMode = .loop
      
      // 5. Adjust animation speed
      animationView!.animationSpeed = 1
      view.addSubview(animationView!)
      
      // 6. Play animation
      
      animationView!.play()
      
    }


}

