//
//  Extensions.swift
//  Pods-TZDayMonthPicker_Example
//
//  Created by Tasin Zarkoob on 31/01/2018.
//

open class CustomView: BaseView {
    
    @IBOutlet var contentView : UIView?
    
    override open func commonInit() {
        super.commonInit()
        let xibFileName = self.classNameAsString(obj: self)
        let view = Bundle.main.loadNibNamed(xibFileName!, owner: self, options: nil)![0] as! UIView
        contentView = view
        self.addSubViewWithConstraint(subview: contentView!, inset: UIEdgeInsets.zero)
    }
    
    func classNameAsString(obj: AnyObject) -> String? {
        return String(describing: type(of: obj)).components(separatedBy: "__").last
    }
    
    func addSubViewWithConstraint(subview:UIView, inset:UIEdgeInsets) {
        let view = self
        view.addSubview(subview)
        subview.frame = CGRect(x: inset.left, y: inset.top, width: view.frame.size.width-inset.right, height: view.frame.size.height-inset.bottom)
        view.clipsToBounds = true;
        
        view.addConstraint(NSLayoutConstraint.init(item: subview, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: inset.left))
        view.addConstraint(NSLayoutConstraint.init(item: subview, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: inset.right))
        view.addConstraint(NSLayoutConstraint.init(item: subview, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: inset.top))
        view.addConstraint(NSLayoutConstraint.init(item: subview, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: inset.bottom))
    }
}

open class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    open func commonInit() {
    }
}
