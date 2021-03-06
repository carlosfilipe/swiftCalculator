//
//  ViewController.swift
//  Calculator
//
//  Created by retina on 04/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    private func button(name: String, color: UIColor) -> UIButton {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = color
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        
        button.addConstraint(NSLayoutConstraint(
                                item: button,
                                attribute: .height,
                                relatedBy: .equal,
                                toItem: button,
                                attribute: .width,
                                multiplier: 1 / 1 ,
                                constant: 0))
//
        button.setTitle(name, for: .normal)
        
        
        return button;
    }
    
    private lazy var zero: UILabel = {
        let lb = UILabel();
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.textColor = .white
        lb.font = UIFont.systemFont(ofSize: 80)
        lb.textAlignment = .right
        lb.text = "0"
        
        return lb;
    }()
    
    private lazy var ac: UIButton = {
        return button(name: "AC", color: .gray)
    }()
    
    private func newLine(_ rootStack: UIStackView) -> UIStackView {
        
        let line = UIStackView()
        let margins = view.layoutMarginsGuide

        rootStack.addArrangedSubview(line)
        line.spacing = 1
        line.axis = .horizontal
        line.translatesAutoresizingMaskIntoConstraints = false
        line.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        line.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        return line
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .green
        
        
        let rootStack = UIStackView()
        let margins = view.layoutMarginsGuide
        
        view.addSubview(rootStack)
//        rootStack.backgroundColor = .red
        rootStack.spacing = 1

        
        rootStack.axis = .vertical
        rootStack.distribution = .fillEqually
        
        rootStack.translatesAutoresizingMaskIntoConstraints = false
        rootStack.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        rootStack.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        rootStack.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
        
        
        let line0 = newLine(rootStack)
        line0.addArrangedSubview(zero)

        let line1 = newLine(rootStack)
        
        line1.addArrangedSubview(ac)
        line1.addArrangedSubview(button(name: "+/-", color: .gray))
        line1.addArrangedSubview(button(name: "%", color: .gray))
        line1.addArrangedSubview(button(name: "/", color: .orange))
        
        let line2 = newLine(rootStack)
        line2.addArrangedSubview(button(name: "7", color: .lightGray))
        line2.addArrangedSubview(button(name: "8", color: .lightGray))
        line2.addArrangedSubview(button(name: "9", color: .lightGray))
        line2.addArrangedSubview(button(name: "x", color: .orange))
        
        let line3 = newLine(rootStack)
        line3.addArrangedSubview(button(name: "4", color: .lightGray))
        line3.addArrangedSubview(button(name: "5", color: .lightGray))
        line3.addArrangedSubview(button(name: "6", color: .lightGray))
        line3.addArrangedSubview(button(name: "-", color: .orange))
        
        let line4 = newLine(rootStack)
        line4.addArrangedSubview(button(name: "1", color: .lightGray))
        line4.addArrangedSubview(button(name: "2", color: .lightGray))
        line4.addArrangedSubview(button(name: "3", color: .lightGray))
        line4.addArrangedSubview(button(name: "+", color: .orange))

        let line5 = newLine(rootStack)
        
        let lineLeft = UIStackView();
        line5.addArrangedSubview(lineLeft)
        
        lineLeft.axis = .horizontal
        lineLeft.spacing = 1
        
        let b = button(name: "0", color: .lightGray)
        b.removeConstraints(b.constraints)
        lineLeft.addArrangedSubview(b)
        
        let lineRight = UIStackView()
        line5.addArrangedSubview(lineRight)
        lineRight.axis = .horizontal
        lineRight.spacing = 1
        
        let comma = button(name: ",", color: .lightGray)
        lineRight.addArrangedSubview(comma)
        lineRight.addArrangedSubview(button(name: "=", color: .orange))
        
        
        

        // Do any additional setup after loading the view.
    }


}

