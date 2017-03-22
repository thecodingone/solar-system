//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var mainSpace = imageView()
mainSpace.frame = CGRect(x: 0, y: 0, width: 1200, height: 900)
mainSpace.image = UIImage(named: "spaceBackground.jpg")
mainSpace.contentMode =  UIViewContentMode.scaleAspectFill

var mainScroll = UIScrollView(frame: CGRect(x: 0, y: 0, width: 1200, height: 900))
mainScroll.maximumZoomScale = 5
mainScroll.minimumZoomScale = 1
mainScroll.bounces = false
mainScroll.bouncesZoom = false
mainScroll.isScrollEnabled = true
mainScroll.isUserInteractionEnabled = true


var sun = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.width / 2, width: 75, height: 75))
sun.image = UIImage(named: "editedsun.png")
sun.contentMode =  UIViewContentMode.scaleAspectFill
sun.center.y = mainSpace.frame.height / 2
sun.center.x = mainSpace.frame.width / 2

var mercury = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.height / 2 - 67, width: 4.5, height: 4.5))
mercury.image = UIImage(named: "mercury.png")
mercury.contentMode =  UIViewContentMode.scaleAspectFill
mercury.center.x = sun.center.x

var venus = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.height / 2 - 94, width: 8.5, height: 8.5))
venus.image = UIImage(named: "venus.png")
venus.contentMode = UIViewContentMode.scaleAspectFill
venus.center.x = sun.center.x

var earth = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 124, width: 17.5 , height: 17.5))
earth.image = UIImage(named: "moonAndEarth.png")
earth.contentMode = UIViewContentMode.scaleAspectFill
earth.center.x = venus.center.x

var mars = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 143, width: 6, height: 6))
mars.image = UIImage(named: "mars.gif")
mars.contentMode = UIViewContentMode.scaleAspectFill
mars.center.x = sun.center.x

var jupiter = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 212, width: 40, height: 40))
jupiter.image = UIImage(named: "finalJupDraft.png")
jupiter.contentMode = UIViewContentMode.scaleAspectFill
jupiter.center.x = sun.center.x

var saturn =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 256, width: 35, height: 35))
saturn.image = UIImage(named: "saturnDraftTop.png")
saturn.contentMode = UIViewContentMode.scaleAspectFill
saturn.center.x = sun.center.x


var uranus =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 275, width: 10, height: 10))
uranus.image = UIImage(named: "uranus.gif")
uranus.contentMode = UIViewContentMode.scaleAspectFill
uranus.center.x = sun.center.x

var neptune =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 306, width: 12.5, height: 12.5))
neptune.image = UIImage(named: "neptune.gif")
neptune.contentMode = UIViewContentMode.scaleAspectFill
neptune.center.x = sun.center.x

var pluto =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 327, width: 5, height: 5))
pluto.image = UIImage(named: "pluto.gif")
pluto.contentMode = UIViewContentMode.scaleAspectFill
pluto.center.x = sun.center.x

mainSpace.addSubview(mainScroll)
mainSpace.isUserInteractionEnabled = true

mainScroll.addSubview(sun)

sun.alpha = 0.0
sun.rotation(view: sun)
sun.layer.shadowColor = UIColor.orange.cgColor
sun.layer.shadowOpacity = 0.5
sun.layer.shadowOffset = CGSize.zero
sun.layer.shadowRadius = 15

mainScroll.addSubview(mercury)
mercury.alpha = 0.0
mercury.layoutIfNeeded()

mainScroll.addSubview(venus)
venus.alpha = 0.0
venus.layoutIfNeeded()

mainScroll.addSubview(earth)
earth.alpha = 0.0
earth.rotation(view: earth)
earth.layoutIfNeeded()

mainScroll.addSubview(mars)
mars.alpha = 0.0
mars.layoutIfNeeded()

mainScroll.addSubview(jupiter)
jupiter.alpha = 0.0
jupiter.layoutIfNeeded()

mainScroll.addSubview(saturn)
saturn.alpha = 0.0
saturn.layoutIfNeeded()
saturn.layer.shadowColor = UIColor.darkGray.cgColor
saturn.layer.shadowOpacity = 1.0
saturn.layer.shadowOffset = CGSize.zero
saturn.layer.shadowRadius = 30


mainScroll.addSubview(uranus)
uranus.alpha = 0.0
uranus.layoutIfNeeded()

mainScroll.addSubview(neptune)
neptune.alpha = 0.0
neptune.layoutIfNeeded()

mainScroll.addSubview(pluto)
pluto.alpha = 0.0
pluto.layoutIfNeeded()

public func startLaunch() {
    
    mercury.orbit(view: mercury, center: mainSpace, radius: 65.0, time: 0.5, delay: 2.0)
    venus.orbit(view: venus, center: mainSpace, radius: 90.0, time: 1.0, delay: 2.0)
    earth.orbit(view: earth, center: mainSpace, radius: 115, time: 1.5, delay: 2.0)
    mars.orbit(view: mars, center: mainSpace, radius: 140, time: 2.0, delay: 2.0)
    jupiter.orbit(view: jupiter, center: mainSpace, radius: 190, time: 2.5, delay: 2.0)
    saturn.orbit(view: saturn, center: mainSpace, radius: 240, time: 3.0, delay: 2.0)
    uranus.orbit(view: uranus, center: mainSpace, radius: 270, time: 3.5, delay: 2.0)
    neptune.orbit(view: neptune, center: mainSpace, radius: 300, time: 4.0, delay: 2.0)
    pluto.orbit(view: pluto, center: mainSpace, radius: 325, time: 4.5, delay: 2.0)
    
    mainSpace.animate_planets(sun: sun, mercury: mercury, venus: venus, earth: earth, mars: mars, jupiter: jupiter, saturn: saturn, uranus: uranus, neptune: neptune, pluto: pluto)
    
    mainScroll.create_circle(view: mainSpace, radius: 65.0, time: 0.5, delay: 12.0)
    
    mainScroll.create_circle(view: mainSpace, radius: 90.0, time: 0.5, delay: 12.2)
    
    mainScroll.create_circle(view: mainSpace, radius: 115.0, time: 0.5, delay: 12.4)
    
    mainScroll.create_circle(view: mainSpace, radius: 140.0, time: 0.5, delay: 12.6)
    
    mainScroll.create_circle(view: mainSpace, radius: 190.0, time: 0.5, delay: 12.8)
    
    mainScroll.create_circle(view: mainSpace, radius: 240.0, time: 0.5, delay: 13.0)
    
    mainScroll.create_circle(view: mainSpace, radius: 270.0, time: 0.5, delay: 13.2)
    
    mainScroll.create_circle(view: mainSpace, radius: 300.0, time: 0.5, delay: 13.4)
    
    mainScroll.create_circle(view: mainSpace, radius: 325.0, time: 0.5, delay: 13.6)
    
}

mainSpace.addGesture()
startLaunch()


PlaygroundPage.current.liveView = mainSpace
