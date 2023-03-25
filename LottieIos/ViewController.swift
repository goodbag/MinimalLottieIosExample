import UIKit
import Lottie

class ViewController: UIViewController {

    private var animationView: LottieAnimationView?
    private var scrollView: UIScrollView = UIScrollView()
    private var lastAnimationViewMaxY: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up the scroll view
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.contentSize = CGSizeMake(400, 3000)
       
        
        animation(name: "earth_loading");
        animation(name: "3_nfc_scan");
        animation(name: "success");
    }
    
    func animation(name: String) {
        // 2. Start LottieAnimationView with animation name (without extension)
        let newAnimationView = LottieAnimationView(name: name, subdirectory: "Animations")
        
        // Calculate the y position of the new animation view
        let yPosition = animationView?.frame.maxY ?? 0
        
        // Position the new animation view below the previous one
        newAnimationView.frame = CGRect(x: 0, y: yPosition, width: view.bounds.width, height: view.bounds.height)
        
        // 3. Set animation content mode
        newAnimationView.contentMode = .scaleAspectFit
        
        // 4. Set animation loop mode
        newAnimationView.loopMode = .loop
        
        // 5. Adjust animation speed
        newAnimationView.animationSpeed = 1
        
        // Add the new animation view to the view hierarchy
        scrollView.addSubview(newAnimationView)
        
        // 6. Play animation
        newAnimationView.play()
        
        // Update the animationView variable to point to the new animation view
        animationView = newAnimationView
    }

}
