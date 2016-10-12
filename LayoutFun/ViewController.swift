//
//  ViewController.swift
//  LayoutFun
//
//  Created by James Campagno on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    let redView = UIView(frame: CGRect.zero)
    let orangeView = UIView(frame: CGRect.zero)
    let yellowView = UIView(frame: CGRect.zero)
    let greenView = UIView(frame: CGRect.zero)
    let blueView = UIView(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        turnOffAutoResizingOnAllViews()
        setupTheConstraints()
        setupColors()
    }
    
}

// MARK: Constraints
extension ViewController {
    
    func setupTheConstraints() {
        // RED
        redView.widthAnchor.constraint(equalTo: redView.heightAnchor).isActive = true
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        // ORANGE
        orangeView.widthAnchor.constraint(equalTo: orangeView.heightAnchor).isActive = true
         orangeView.centerXAnchor.constraint(equalTo: redView.centerXAnchor).isActive = true
        orangeView.widthAnchor.constraint(equalTo: redView.widthAnchor, multiplier: 0.75).isActive = true
        orangeView.bottomAnchor.constraint(equalTo: redView.topAnchor).isActive = true
        
        // YELLOW
        yellowView.widthAnchor.constraint(equalTo: yellowView.heightAnchor).isActive = true
        yellowView.centerXAnchor.constraint(equalTo: redView.centerXAnchor).isActive = true
        yellowView.widthAnchor.constraint(equalTo: orangeView.widthAnchor, multiplier: 0.75).isActive = true
        yellowView.bottomAnchor.constraint(equalTo: orangeView.topAnchor).isActive = true
        
        // GREEN
        greenView.widthAnchor.constraint(equalTo: greenView.heightAnchor).isActive = true
        greenView.centerXAnchor.constraint(equalTo: redView.centerXAnchor).isActive = true
        greenView.widthAnchor.constraint(equalTo: yellowView.widthAnchor, multiplier: 0.75).isActive = true
        greenView.bottomAnchor.constraint(equalTo: yellowView.topAnchor).isActive = true
        
        // BLUE
        blueView.widthAnchor.constraint(equalTo: blueView.heightAnchor).isActive = true
        blueView.centerXAnchor.constraint(equalTo: redView.centerXAnchor).isActive = true
        blueView.widthAnchor.constraint(equalTo: greenView.widthAnchor, multiplier: 0.75).isActive = true
        blueView.bottomAnchor.constraint(equalTo: greenView.topAnchor).isActive = true
    }
    
    func turnOffAutoResizingOnAllViews() {
        [redView, orangeView, yellowView, greenView, blueView].forEach { colorView in
            colorView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(colorView)
        }
    }
    
}


// MARK: Setting up Views
extension ViewController {
    
    func setupColors() {
        redView.backgroundColor = UIColor.red
        orangeView.backgroundColor = UIColor.orange
        yellowView.backgroundColor = UIColor.yellow
        greenView.backgroundColor = UIColor.green
        blueView.backgroundColor = UIColor.blue
    }
}

/*Some hints. Each view must be a perfect square, meaning.. its height equals its width.
The redView's width should be equal to half the width of the iPhone (or view). The bottom of the redView should sit flush on the bottom of the view.
Each view (excluding the redView) object should be 75% of the width of the view below it and it should sit flush on top of it.
 */
