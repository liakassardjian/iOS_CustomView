//
//  ProgressBarViewController.swift
//  CustomViewComponent
//
//  Created by Joaquim Pessoa Filho on 26/05/19.
//  Copyright © 2019 Joaquim Pessoa Filho. All rights reserved.
//

import UIKit

class ProgressBarViewController: UITableViewController {
    
    @IBOutlet weak var progressBarView: ProgressBarView?
    @IBOutlet weak var widthSlider: UISlider!
    @IBOutlet weak var progressSlider: UISlider!
    @IBOutlet weak var targetSlider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var colorSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.progressBarView?.lineWidth = CGFloat(self.widthSlider.value)
        self.progressBarView?.progressValue = CGFloat(self.progressSlider.value)
        self.progressBarView?.targetValue = CGFloat(self.targetSlider.value)
        
        self.progressLabel.text = String(format: "%.2f", self.progressSlider.value * 100) + "%"
        
        self.targetLabel.text = String(format: "%.2f", self.targetSlider.value * 100) + "%"
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        self.progressBarView?.setNeedsDisplay()
    }
    
    @IBAction func widthChange(_ sender: Any) {
        self.progressBarView?.lineWidth = CGFloat(self.widthSlider.value)
    }
    
    @IBAction func progessChange(_ sender: Any) {
        self.progressBarView?.progressValue = CGFloat(self.progressSlider.value)
        
        self.progressLabel.text = String(format: "%.2f", self.progressSlider.value * 100) + "%"
    }
    
    @IBAction func targetChange(_ sender: Any) {
        self.progressBarView?.targetValue = CGFloat(self.targetSlider.value)
        
        self.targetLabel.text = String(format: "%.2f", self.targetSlider.value * 100) + "%"
    }
    
    @IBAction func changeColor(_ sender: Any) {
        if colorSegmentedControl.selectedSegmentIndex == 0 {
            self.progressBarView?.progressColor = #colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 0.4874785959)
        } else {
            self.progressBarView?.progressColor = #colorLiteral(red: 0, green: 0.3593619466, blue: 1, alpha: 0.4874785959)
        }
    }
}

