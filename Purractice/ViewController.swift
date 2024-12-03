import UIKit

class ViewController: UIViewController {
    var namelabel: UILabel = {
        let label = UILabel()
        label.text = "Hello, motherfucker!"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.textColor = .purple
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "img1")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var bioLabel: UILabel = {
        let label = UILabel()
        label.text = "The path of the righteous is beset on all sides by the inequities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will shepherds the weak through the valley of darkness for he is truly his brother's keeper and te finder of lost children. And i will strike down upon thee witch great vengeance and furious Anger those who attempt to poison and destroy my brothers and you will know. My name is te Lord when i lay my vengeance upon thee"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.textColor = .secondaryLabel
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    var textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "DO U SPEAK IT??!"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple
        button.setTitle("What?", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
        
    }()
    
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubviews()
        constraintView()
        
    }
    
    func addSubviews() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(namelabel)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(bioLabel)
        stackView.addArrangedSubview(textField)
        stackView.addArrangedSubview(button)
        
    }
    
    func constraintView () {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            imageView.heightAnchor.constraint(lessThanOrEqualToConstant: 200),
            button.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.5)
        ])
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        print(textField.text)
    }
        
    }
    

