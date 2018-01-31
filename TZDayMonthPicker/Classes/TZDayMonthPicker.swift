//
//  TZDayMonthPicker.swift
//  Pods-TZDayMonthPicker_Example
//
//  Created by Tasin Zarkoob on 31/01/2018.
//

import UIKit

//#import <OpenSans/UIFont+Montserrat.h>

public struct TZStyler {
    
}


public class TZDayMonthPicker: CustomView {
    
    @IBOutlet var monthPickerView : UIPickerView!
    @IBOutlet var dayPickerView : UIPickerView!
    
    
    
}

extension TZDayMonthPicker : UIPickerViewDelegate {
    
    public func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return pickerView.frame.size.width
    }
    
    public func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return pickerView.frame.size.height
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == self.monthPickerView {
            return "TEST"
        } else {
            return "\(row)"
        }
       
    }
}

extension TZDayMonthPicker: UIPickerViewDataSource {
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == self.monthPickerView {
            return 12
        } else {
            return 31
        }
    }
}
