//
//  ViewController.swift
//  PanGestureRacognizer
//
//  Created by Вячеслав Квашнин on 31.07.2022.
//

import UIKit

class ViewController: UIViewController {

    let viewRect: UIView = {
       let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        view.backgroundColor = .red
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
        view.addSubview(viewRect)
        viewRect.center = view.center
        
        let panRecognizer = UIPanGestureRecognizer(target: self, action: #selector(wasDragged))
        panRecognizer.view?.isUserInteractionEnabled = true
        view.addGestureRecognizer(panRecognizer)
    }
    
    @objc func wasDragged(gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: self.view)

        // Use translation.y to change the position of your customView, e.g.
        viewRect.center.y = translation.y
        viewRect.center.x = translation.x
    }
}

