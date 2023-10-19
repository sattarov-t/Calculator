//  Calculator
//
//  Created by Тимур on 17.10.2023.

import UIKit

class ViewController: UIViewController {
    
    private lazy var displayLabel = UILabel()
    private lazy var customView = UIView()
    private lazy var button1 = UIButton(type: .system)
    private lazy var button2 = UIButton(type: .system)
    private lazy var button3 = UIButton(type: .system)
    private lazy var button4 = UIButton(type: .system)
    private lazy var stackView2 = UIStackView()
    private lazy var button5 = UIButton(type: .system)
    private lazy var button6 = UIButton(type: .system)
    private lazy var button7 = UIButton(type: .system)
    private lazy var button8 = UIButton(type: .system)
    private lazy var stackView3 = UIStackView()
    private lazy var button9 = UIButton(type: .system)
    private lazy var button10 = UIButton(type: .system)
    private lazy var button11 = UIButton(type: .system)
    private lazy var button12 = UIButton(type: .system)
    private lazy var stackView4 = UIStackView()
    private lazy var button13 = UIButton(type: .system)
    private lazy var button14 = UIButton(type: .system)
    private lazy var button15 = UIButton(type: .system)
    private lazy var button16 = UIButton(type: .system)
    private lazy var stackView5 = UIStackView()
    private lazy var button17 = UIButton(type: .system)
    private lazy var button18 = UIButton(type: .system)
    private lazy var button19 = UIButton(type: .system)
    private lazy var stackView7 = UIStackView()
    private lazy var stackView6 = UIStackView()
    private lazy var stackView1 = UIStackView()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        setupUI()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Please use this class from code.")
    }
    
    private func setupUI() {
        
        view.addSubview(stackView1)
        
        view.backgroundColor = UIColor(white: 0, alpha: 1)
        
        stackView1.addArrangedSubview(customView)
        stackView1.addArrangedSubview(stackView2)
        stackView1.addArrangedSubview(stackView3)
        stackView1.addArrangedSubview(stackView4)
        stackView1.addArrangedSubview(stackView5)
        stackView1.addArrangedSubview(stackView6)
        
        stackView1.axis = .vertical
        stackView1.distribution = .fillEqually
        stackView1.spacing = 2
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        
        stackView6.addArrangedSubview(button17)
        stackView6.addArrangedSubview(stackView7)
        
        stackView6.distribution = .fillEqually
        stackView6.spacing = 1
        stackView6.translatesAutoresizingMaskIntoConstraints = false
        
        stackView7.addArrangedSubview(button18)
        stackView7.addArrangedSubview(button19)
        
        stackView7.distribution = .fillEqually
        stackView7.spacing = 1
        stackView7.translatesAutoresizingMaskIntoConstraints = false
        
        button19.backgroundColor = UIColor(red: 1, green: 0.57810515169999999, blue: 0, alpha: 1)
        button19.contentVerticalAlignment = .center
        button19.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button19.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button19.translatesAutoresizingMaskIntoConstraints = false
        button19.setTitle("=", for: .normal)
        button19.setTitleColor(UIColor.white, for: .normal)
        button19.addTarget(nil, action: Selector("calcButtonPressed:"), for: .touchUpInside)
        
        button18.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button18.contentVerticalAlignment = .center
        button18.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button18.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button18.translatesAutoresizingMaskIntoConstraints = false
        button18.setTitle(".", for: .normal)
        button18.setTitleColor(UIColor.white, for: .normal)
        button18.addTarget(nil, action: Selector("numButtonPressed:"), for: .touchUpInside)
        
        button17.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button17.contentVerticalAlignment = .center
        button17.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button17.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button17.translatesAutoresizingMaskIntoConstraints = false
        button17.setTitle("0", for: .normal)
        button17.setTitleColor(UIColor.white, for: .normal)
        button17.addTarget(nil, action: Selector("numButtonPressed:"), for: .touchUpInside)
        
        stackView5.addArrangedSubview(button13)
        stackView5.addArrangedSubview(button14)
        stackView5.addArrangedSubview(button15)
        stackView5.addArrangedSubview(button16)
        
        stackView5.distribution = .fillEqually
        stackView5.spacing = 1
        stackView5.translatesAutoresizingMaskIntoConstraints = false
        
        button16.backgroundColor = UIColor(red: 1, green: 0.57810515169999999, blue: 0, alpha: 1)
        button16.contentVerticalAlignment = .center
        button16.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button16.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button16.translatesAutoresizingMaskIntoConstraints = false
        button16.setTitle("+", for: .normal)
        button16.setTitleColor(UIColor.white, for: .normal)
        button16.addTarget(nil, action: Selector("calcButtonPressed:"), for: .touchUpInside)
        
        button15.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button15.contentVerticalAlignment = .center
        button15.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button15.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button15.translatesAutoresizingMaskIntoConstraints = false
        button15.setTitle("3", for: .normal)
        button15.setTitleColor(UIColor.white, for: .normal)
        button15.addTarget(nil, action: Selector("numButtonPressed:"), for: .touchUpInside)
        
        button14.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button14.contentVerticalAlignment = .center
        button14.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button14.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button14.translatesAutoresizingMaskIntoConstraints = false
        button14.setTitle("2", for: .normal)
        button14.setTitleColor(UIColor.white, for: .normal)
        button14.addTarget(nil, action: Selector("numButtonPressed:"), for: .touchUpInside)
        
        button13.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button13.contentVerticalAlignment = .center
        button13.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button13.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button13.translatesAutoresizingMaskIntoConstraints = false
        button13.setTitle("1", for: .normal)
        button13.setTitleColor(UIColor.white, for: .normal)
        button13.addTarget(nil, action: Selector("numButtonPressed:"), for: .touchUpInside)
        
        stackView4.addArrangedSubview(button9)
        stackView4.addArrangedSubview(button10)
        stackView4.addArrangedSubview(button11)
        stackView4.addArrangedSubview(button12)
        
        stackView4.distribution = .fillEqually
        stackView4.spacing = 1
        stackView4.translatesAutoresizingMaskIntoConstraints = false
        
        button12.backgroundColor = UIColor(red: 1, green: 0.57810515169999999, blue: 0, alpha: 1)
        button12.contentVerticalAlignment = .center
        button12.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button12.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button12.translatesAutoresizingMaskIntoConstraints = false
        button12.setTitle("-", for: .normal)
        button12.setTitleColor(UIColor.white, for: .normal)
        button12.addTarget(nil, action: Selector("calcButtonPressed:"), for: .touchUpInside)
        
        button11.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button11.contentVerticalAlignment = .center
        button11.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button11.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button11.translatesAutoresizingMaskIntoConstraints = false
        button11.setTitle("6", for: .normal)
        button11.setTitleColor(UIColor.white, for: .normal)
        button11.addTarget(nil, action: Selector("numButtonPressed:"), for: .touchUpInside)
        
        button10.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button10.contentVerticalAlignment = .center
        button10.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button10.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button10.translatesAutoresizingMaskIntoConstraints = false
        button10.setTitle("5", for: .normal)
        button10.setTitleColor(UIColor.white, for: .normal)
        button10.addTarget(nil, action: Selector("numButtonPressed:"), for: .touchUpInside)
        
        button9.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button9.contentVerticalAlignment = .center
        button9.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button9.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button9.translatesAutoresizingMaskIntoConstraints = false
        button9.setTitle("4", for: .normal)
        button9.setTitleColor(UIColor.white, for: .normal)
        button9.addTarget(nil, action: Selector("numButtonPressed:"), for: .touchUpInside)
        
        stackView3.addArrangedSubview(button5)
        stackView3.addArrangedSubview(button6)
        stackView3.addArrangedSubview(button7)
        stackView3.addArrangedSubview(button8)
        
        stackView3.distribution = .fillEqually
        stackView3.spacing = 1
        stackView3.translatesAutoresizingMaskIntoConstraints = false
        
        button8.backgroundColor = UIColor(red: 1, green: 0.57810515169999999, blue: 0, alpha: 1)
        button8.contentVerticalAlignment = .center
        button8.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button8.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button8.translatesAutoresizingMaskIntoConstraints = false
        button8.setTitle("×", for: .normal)
        button8.setTitleColor(UIColor.white, for: .normal)
        button8.addTarget(nil, action: Selector("calcButtonPressed:"), for: .touchUpInside)
        
        button7.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button7.contentVerticalAlignment = .center
        button7.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button7.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button7.translatesAutoresizingMaskIntoConstraints = false
        button7.setTitle("9", for: .normal)
        button7.setTitleColor(UIColor.white, for: .normal)
        button7.addTarget(nil, action: Selector("numButtonPressed:"), for: .touchUpInside)
        
        button6.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button6.contentVerticalAlignment = .center
        button6.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button6.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button6.translatesAutoresizingMaskIntoConstraints = false
        button6.setTitle("8", for: .normal)
        button6.setTitleColor(UIColor.white, for: .normal)
        button6.addTarget(nil, action: Selector("numButtonPressed:"), for: .touchUpInside)
        
        button5.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button5.contentVerticalAlignment = .center
        button5.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button5.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button5.translatesAutoresizingMaskIntoConstraints = false
        button5.setTitle("7", for: .normal)
        button5.setTitleColor(UIColor.white, for: .normal)
        button5.addTarget(nil, action: Selector("numButtonPressed:"), for: .touchUpInside)
        
        stackView2.addArrangedSubview(button1)
        stackView2.addArrangedSubview(button2)
        stackView2.addArrangedSubview(button3)
        stackView2.addArrangedSubview(button4)
        
        stackView2.backgroundColor = .yellow
        stackView2.distribution = .fillEqually
        stackView2.spacing = 1
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        
        button4.backgroundColor = UIColor(red: 1, green: 0.57810515169999999, blue: 0, alpha: 1)
        button4.contentVerticalAlignment = .center
        button4.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button4.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.setTitle("÷", for: .normal)
        button4.setTitleColor(UIColor.white, for: .normal)
        button4.addTarget(nil, action: Selector("calcButtonPressed:"), for: .touchUpInside)
        
        button3.backgroundColor = UIColor(white: 0.33333333329999998, alpha: 1)
        button3.contentVerticalAlignment = .center
        button3.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button3.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.setTitle("%", for: .normal)
        button3.setTitleColor(UIColor.white, for: .normal)
        button3.addTarget(nil, action: Selector("calcButtonPressed:"), for: .touchUpInside)
        
        button2.backgroundColor = UIColor(white: 0.33333333329999998, alpha: 1)
        button2.contentVerticalAlignment = .center
        button2.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button2.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setTitle("+/-", for: .normal)
        button2.setTitleColor(UIColor.white, for: .normal)
        button2.addTarget(nil, action: Selector("calcButtonPressed:"), for: .touchUpInside)
        
        button1.backgroundColor = UIColor(white: 0.33333333329999998, alpha: 1)
        button1.contentVerticalAlignment = .center
        button1.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button1.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.setTitle("AC", for: .normal)
        button1.setTitleColor(UIColor.white, for: .normal)
        button1.addTarget(nil, action: Selector("calcButtonPressed:"), for: .touchUpInside)
        
        customView.addSubview(displayLabel)
        
        customView.backgroundColor = UIColor(red: 0.26051741839999998, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        displayLabel.contentMode = .left
        displayLabel.font = UIFont.systemFont(ofSize: 50, weight: .thin)
        displayLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
        displayLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .vertical)
        displayLabel.text = "0"
        displayLabel.textAlignment = .right
        displayLabel.textColor = UIColor.white
        displayLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupLayout() {
        
        stackView1.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: stackView1.trailingAnchor).isActive = true
        stackView1.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: stackView1.bottomAnchor).isActive = true
        
        customView.trailingAnchor.constraint(equalTo: displayLabel.trailingAnchor, constant: 10).isActive = true
        displayLabel.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 10).isActive = true
        displayLabel.topAnchor.constraint(equalTo: customView.topAnchor).isActive = true
        customView.bottomAnchor.constraint(equalTo: displayLabel.bottomAnchor).isActive = true
    }
}


