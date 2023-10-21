//  Calculator
//
//  Created by Тимур on 17.10.2023.

import UIKit

class CalculatorController: UIViewController {
    
    //MARK: - Func of button
    
    
    lazy var displayLabel: UILabel = {
        let label = UILabel()
        label.contentMode = .left
        label.font = UIFont.systemFont(ofSize: 50, weight: .thin)
        label.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
        label.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .vertical)
        label.text = "0"
        label.textAlignment = .right
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    private lazy var customView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.26051741839999998, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //MARK: - Buttons
    private lazy var button1: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(white: 0.33333333329999998, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("AC", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(calcButton), for: .touchUpInside)
        return button
    }()
    private lazy var button2: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(white: 0.33333333329999998, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(calcButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var button3: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(white: 0.33333333329999998, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("%", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(calcButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var button4: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 1, green: 0.57810515169999999, blue: 0, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("÷", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(calcButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var button5: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("7", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(numButton), for: .touchUpInside)
        return button
    }()
    private lazy var button6: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("8", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(numButton), for: .touchUpInside)
        return button
    }()
    private lazy var button7: UIButton = {
       let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("9", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(numButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var button8: UIButton = {
       let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 1, green: 0.57810515169999999, blue: 0, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("×", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(numButton), for: .touchUpInside)
        return button
    }()
    private lazy var button9: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("4", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(numButton), for: .touchUpInside)
        return button
    }()
    private lazy var button10: UIButton = {
       let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("5", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(numButton), for: .touchUpInside)
        return button
    }()
    private lazy var button11: UIButton = {
       let button  = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("6", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(numButton), for: .touchUpInside)
        return button
    }()
    private lazy var button12: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 1, green: 0.57810515169999999, blue: 0, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("-", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(calcButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var button13: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("1", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(numButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var button14: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("2", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(numButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var button15: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("3", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(numButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var button16: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 1, green: 0.57810515169999999, blue: 0, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("+", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(calcButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var button17: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("0", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(numButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var button18: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.1137254902, green: 0.60784313729999995, blue: 0.96470588239999999, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(".", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(numButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var button19: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 1, green: 0.57810515169999999, blue: 0, alpha: 1)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("=", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(nil, action: #selector(calcButton), for: .touchUpInside)
        return button
    }()
    
    //MARK: - StackViews
    
    private lazy var stackView1: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var stackView2: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    private lazy var stackView3: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    private lazy var stackView4: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    private lazy var stackView5: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var stackView6: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var stackView7: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    //MARK: - Display values
    
    private var isFinishedTyping: Bool = true //Метка для отслеживания дейтвия
    
    private var dislpayValue: Double {
        
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert display label to double")
            }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    private var calculator = CalculatorLogic()
    //MARK: - Initialization of view
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Please use this class from code.")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupLayout()
    }
    //MARK: - Buttons funcs
    @objc func calcButton (_ sender: UIButton) {
        print("\(String(describing: sender.currentTitle)) is pressed")
        
        isFinishedTyping = true
        
        calculator.setNumber(dislpayValue)
        
        if let calcMethod = sender.currentTitle {
            if let result = calculator.calculate(symbol: calcMethod) {
                dislpayValue = result
            }
        }
        
        calculator.playSound()
    }
    
    @objc func numButton(_ sender: UIButton) {
        print("\(String(describing: sender.currentTitle)) is pressed")
        
        if let numValue = sender.currentTitle {
            if isFinishedTyping {
                displayLabel.text = numValue
                isFinishedTyping = false
            } else {
                if numValue == "." {
                    let isInt = floor(dislpayValue) == dislpayValue
                    
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        }
        calculator.playSound()

    }

    //MARK: - Setups of layouts
    
    private func setupUI() {
        
        view.addSubview(stackView1)
        
        view.backgroundColor = UIColor(white: 0, alpha: 1)
        
        stackView1.addArrangedSubview(customView)
        stackView1.addArrangedSubview(stackView2)
        stackView1.addArrangedSubview(stackView3)
        stackView1.addArrangedSubview(stackView4)
        stackView1.addArrangedSubview(stackView5)
        stackView1.addArrangedSubview(stackView6)

        stackView6.addArrangedSubview(button17)
        stackView6.addArrangedSubview(stackView7)
        
        stackView7.addArrangedSubview(button18)
        stackView7.addArrangedSubview(button19)
        
        stackView5.addArrangedSubview(button13)
        stackView5.addArrangedSubview(button14)
        stackView5.addArrangedSubview(button15)
        stackView5.addArrangedSubview(button16)

        stackView4.addArrangedSubview(button9)
        stackView4.addArrangedSubview(button10)
        stackView4.addArrangedSubview(button11)
        stackView4.addArrangedSubview(button12)
        
        stackView3.addArrangedSubview(button5)
        stackView3.addArrangedSubview(button6)
        stackView3.addArrangedSubview(button7)
        stackView3.addArrangedSubview(button8)
        
        stackView2.addArrangedSubview(button1)
        stackView2.addArrangedSubview(button2)
        stackView2.addArrangedSubview(button3)
        stackView2.addArrangedSubview(button4)

        customView.addSubview(displayLabel)
        
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



