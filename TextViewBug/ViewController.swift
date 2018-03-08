//
//  ViewController.swift
//  TextViewBug
//
//  Created by Gleb Arkhipov on 23/02/2018.
//  Copyright © 2018 Gleb Arkhipov. All rights reserved.
//

import UIKit

class View: UIView {
    
    let textView = UITextView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .yellow
        
        addSubview(textView)
        
        addConstraints([
            textView.topAnchor.constraint(equalTo: topAnchor),
            textView.leftAnchor.constraint(equalTo: leftAnchor),
            textView.bottomAnchor.constraint(equalTo: bottomAnchor),
            textView.rightAnchor.constraint(equalTo: rightAnchor),
            ])
        
        textView.text = (1...1000)
            .map { "test\($0)" }
            .joined(separator: " ")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    // Uncommenting this, unsurprisingly, fixes the issue
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        textView.contentOffset = .zero
//    }
    
}

class ViewController: UIViewController {
    override func loadView() {
        view = View()
    }
}
