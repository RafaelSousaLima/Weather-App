//
//  DailyForecastTableViewCell.swift
//  Weather App
//
//  Created by Rafael Lima on 26/02/25.
//

import UIKit

class DailyForecastTableViewCell: UITableViewCell {
    
    static let identifier = "DailyForecastTableViewCell"

    private lazy var weekdayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.text = "TER"
        return label
    }()
    
    private lazy var minTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.text = "min 25C"
        return label
    }()
    
    private lazy var maxTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.text = "max 25C"
        return label
    }()
    
    private lazy var iconImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage.cloudIcon
        return imageView
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [weekdayLabel,
                                                       iconImageView,
                                                       minTemperatureLabel,
                                                       maxTemperatureLabel])
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
        stackView.spacing = 16
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .clear
        selectionStyle = .none
        setHierarchy()
        setupConstraints()
    }
    
    private func setHierarchy() {
        contentView.addSubview(stackView)
        NSLayoutConstraint.activate([
            weekdayLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 50),
        ])
    }
    
    private func setupConstraints() {
        stackView.setConstraintsToParent(contentView)
    }
    
    
    
}
