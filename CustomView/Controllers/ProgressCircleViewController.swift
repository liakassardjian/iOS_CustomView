//
//  ViewController.swift
//  CustomViewComponent
//
//  Created by Joaquim Pessoa Filho on 22/05/19.
//  Copyright © 2019 Joaquim Pessoa Filho. All rights reserved.
//

import UIKit

class ProgressCircleViewController: UITableViewController {

    @IBOutlet weak var progressCircleView1: ProgressCircleView?
    @IBOutlet weak var progressCircleView2: ProgressCircleView?
    @IBOutlet weak var progressCircleView3: ProgressCircleView?
    @IBOutlet weak var widthSlider: UISlider!
    @IBOutlet weak var progressSlider: UISlider!
    @IBOutlet weak var targetSlider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var colorSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.progressCircleView1?.circleWidth = CGFloat(self.widthSlider.value)
        self.progressCircleView1?.progressValue = CGFloat(self.progressSlider.value)
        self.progressCircleView1?.targetValue = CGFloat(self.targetSlider.value)
        
        self.progressCircleView2?.circleWidth = CGFloat(self.widthSlider.value)
        self.progressCircleView2?.progressValue = CGFloat(self.progressSlider.value)
        self.progressCircleView2?.targetValue = CGFloat(self.targetSlider.value)
        
        self.progressCircleView3?.circleWidth = CGFloat(self.widthSlider.value)
        self.progressCircleView3?.progressValue = CGFloat(self.progressSlider.value)
        self.progressCircleView3?.targetValue = CGFloat(self.targetSlider.value)
        
        self.progressLabel.text = String(format: "%.2f", self.progressSlider.value * 100) + "%"
        self.targetLabel.text = String(format: "%.2f", self.targetSlider.value * 100) + "%"
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        self.progressCircleView1?.setNeedsDisplay()
        self.progressCircleView2?.setNeedsDisplay()
        self.progressCircleView3?.setNeedsDisplay()
    }

    @IBAction func widthChange(_ sender: Any) {
        self.progressCircleView1?.circleWidth = CGFloat(self.widthSlider.value)
        
        self.progressCircleView2?.circleWidth = CGFloat(self.widthSlider.value)
        
        self.progressCircleView3?.circleWidth = CGFloat(self.widthSlider.value)
    }
    
    @IBAction func progessChange(_ sender: Any) {
        self.progressCircleView1?.progressValue = CGFloat(self.progressSlider.value)
        
        self.progressCircleView2?.progressValue = CGFloat(self.progressSlider.value)
        
        self.progressCircleView3?.progressValue = CGFloat(self.progressSlider.value)
        
        self.progressLabel.text = String(format: "%.2f", self.progressSlider.value * 100) + "%"
    }
    
    @IBAction func targetChange(_ sender: Any) {
        self.progressCircleView1?.targetValue = CGFloat(self.targetSlider.value)
        
        self.progressCircleView2?.targetValue = CGFloat(self.targetSlider.value)
        
        self.progressCircleView3?.targetValue = CGFloat(self.targetSlider.value)
        
        self.targetLabel.text = String(format: "%.2f", self.targetSlider.value * 100) + "%"
    }
    
    
    @IBAction func changeColor(_ sender: Any) {
        if colorSegmentedControl.selectedSegmentIndex == 0 {
            self.progressCircleView1?.progressColor = #colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 0.4874785959)
            self.progressCircleView2?.progressColor = #colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 0.4874785959)
            self.progressCircleView3?.progressColor = #colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 0.4874785959)
        } else {
            self.progressCircleView1?.progressColor = #colorLiteral(red: 0, green: 0.3593619466, blue: 1, alpha: 0.4874785959)
            self.progressCircleView2?.progressColor = #colorLiteral(red: 0, green: 0.3593619466, blue: 1, alpha: 0.4874785959)
            self.progressCircleView3?.progressColor = #colorLiteral(red: 0, green: 0.3593619466, blue: 1, alpha: 0.4874785959)
        }
    }
}

