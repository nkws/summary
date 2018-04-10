//
//  VoteViewController.swift
//  summary
//
//  Copyright © 2017年 ArgentVGL. All rights reserved.
//

import UIKit

class VoteViewController: UIViewController {
    @IBOutlet var rankTitle: UILabel!
    @IBOutlet var targets: UIStackView!

    var rank: Rank?

    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: add error handling
        // TODO: set rank target

        guard let name = rank?.name else { return }
        rankTitle.text = name

        let target: UIStackView = UIStackView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 30))
        target.axis = .horizontal
        target.distribution = .fill

        let testLabel = UILabel()
        testLabel.text = "ranktarget"
        target.addArrangedSubview(testLabel)

        let testButton = UIButton()
        testButton.setTitle("select", for: .normal)
        testButton.setTitleColor(view.tintColor, for: .normal)
        target.addArrangedSubview(testButton)

        targets.insertArrangedSubview(target, at: 0)
    }

    @IBAction func didTouchCancel(_: Any) {
        dismiss(animated: true, completion: nil)
    }

}
