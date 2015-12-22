import UIKit

extension UIColor{
    static func DBSIconRedWithAlpha(alpha: CGFloat)->UIColor
    {
        return UIColor(red: 0.91, green: 0.13, blue: 0.10, alpha: alpha)
    }
    
    static func DBSBackgroundRedWithAlpha(alpha: CGFloat)->UIColor
    {
        return UIColor(red: 0.67, green: 0.10, blue: 0.00, alpha: alpha)//UIColor(red: 0.78, green: 0.04, blue: 0.00, alpha: alpha)
    }
    
    static func DBSBlackWithAlpha(alpha: CGFloat)->UIColor
    {
        return UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: alpha)
    }
    
    static func DBSBlackLeftWithAlpha(alpha: CGFloat)->UIColor
    {
        return UIColor(red: 0.20, green: 0.20, blue: 0.20, alpha: alpha)
    }
    
    
    static func DBSPinkBackgroundWithAlpha(alpha: CGFloat)->UIColor
    {
        return UIColor(red: 0.95, green: 0.91, blue: 0.91, alpha: alpha)
    }
}
