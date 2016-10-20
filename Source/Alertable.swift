import UIKit


public extension UIViewController
{
    /**
     Indicates whether we're alerting something.
     
     - discussion   This property exposes locally the global alert state, so we don't alerts don't overlap each other.
     */
    public var alerting: Bool {
        return Alert.on
    }
    
    /**
     Presents an alert.
     */
    public func alert(this alert: Alert) {
        alert.show(self)
    }
}

/**
    Alert

    This is the main struct that handles alerts on iOS.
*/
public struct Alert
{
    //MARK: - Private
    private let controller: UIAlertController
    private let sender: UIViewController?
    
    //MARK: - Public
    /**
        Action tuple that serves as a proxy for UIAlertAction objects.
    
        - param     title: An optional title for the Action.
        - param     style: The Action's style. If no style is provided, `.default` is assumed.
        - param     handler: The Action's handler block. Optional.
    */
    public class Action
    {
        public let title: String?
        public let style: UIAlertActionStyle?
        public let handler: ((UIAlertAction) -> Void)?
        
        public init(title: String?,
                    style: UIAlertActionStyle?,
                    handler: ((UIAlertAction) -> Void)?)
        {
            self.title = title
            self.style = style
            self.handler = handler
        }
    }
    
    /**
        Check this variable if you want to know whether the app is currently alerting the user or not.
    
        - discussion This is particularly useful so that alerts don't interfere with `viewWillAppear`, `viewDidAppear`, `viewWillDisappear` and `viewDidDisappear` methods. You may want to set this yourself when iOS presents its default alerts (ie. when requesting permissions to the user).
    */
    public static var on = false
    
    /**
        Simplest way to init an alert. 
    
        - param     message: The message to be displayed on the alert. This is the only mandatory parameter.
        - param     title: You may provide a title for the alert. Optional.
        - param     sender: A UIViewController to present the Alert. Optional.
        - param     actions: You may provide Actions for the alert. Optional.
        - discussion    If no actions are provided, a default 'Ok' action will be created. (No localization files are provided with this library, but the 'Ok' message is created with `NSLocalizedString`, so should the parent app have the key 'Ok' set up, Alertable will pick it up.)
    */
    public init(_ message: String,
                _ title: String? = nil,
                _ sender: UIViewController? = nil,
                _ actions: [Action]? = nil,
                _ style: UIAlertControllerStyle = .alert)
    {
        self.controller = UIAlertController(title: title, message: message, preferredStyle: style)
        if actions != nil && !actions!.isEmpty {
            for action in actions! {
                self.controller.addAction(UIAlertAction(title: action.title, style: action.style ?? .default, handler: { (alertAction: UIAlertAction) -> Void in
                    Alert.on = false
                    action.handler?(alertAction)
                }))
            }
        } else {
            self.controller.addAction(UIAlertAction(title: NSLocalizedString("Ok", comment: "A simple ok message"), style: .default, handler: { (alertAction: UIAlertAction) -> Void in
                Alert.on = false
            }))
        }
        self.sender = sender
    }
    
    /**
        Presents the alert. 
    
        - param    sender: A UIViewController to present the Alert. Optional.
        - discussion    If no sender is provided, either during the init process or when calling this method, no alert is ever presented. If both senders are provided, the one provided on this method overrides the one provided during init. Additionally, if we're already alerting, this method does nothing.
    */
    public func show(_ sender: UIViewController? = nil)
    {
        if let finalSender = sender {
            self.show(finalSender)
        } else if let finalSender = self.sender {
            self.show(finalSender)
        }
    }
    
    private func show(_ viewController: UIViewController)
    {
        if Alert.on {
            return
        }
        Alert.on = true
        viewController.present(self.controller,
                               animated: true,
                               completion: nil)
    }
    
    /**
        Auxiliary method to present an alert from a static context.
    
        - param     message: The message to be displayed on the alert. This is the only mandatory parameter.
        - param     title: You may provide a title for the alert. Optional.
        - param     sender: A UIViewController to present the Alert. Optional.
        - param     actions: You may provide Actions for the alert. Optional.
        - discussion    If no actions are provided, a default 'Ok' action will be created.
    */
    public static func show(_ message: String,
                            _ title: String? = nil,
                            _ sender: UIViewController? = nil,
                            _ actions: [Action]? = nil)
    {
        Alert(message, title, sender, actions).show()
    }
}
