//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var mainSpace = UIImageView(frame: CGRect(x: 0, y: 0, width: 1000, height: 900))
mainSpace.image = UIImage(named: "spaceBackground.jpg")
mainSpace.contentMode =  UIViewContentMode.scaleAspectFill

var sun = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.width / 2, width: 75, height: 75))
sun.image = UIImage(named: "editedsun.gif")
sun.contentMode =  UIViewContentMode.scaleAspectFill
sun.center.y = mainSpace.frame.height / 2
sun.center.x = mainSpace.frame.width / 2

var mercury = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.width / 2 - 65, width: 4.5, height: 4.5))
mercury.image = UIImage(named: "mercury.gif")
mercury.contentMode =  UIViewContentMode.scaleAspectFill
mercury.center.x = sun.center.x

var venus = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.width / 2 - 90, width: 8.5, height: 8.5))
venus.image = UIImage(named: "venus.gif")
venus.contentMode = UIViewContentMode.scaleAspectFill
venus.center.x = sun.center.x

var earth = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 115, width: 17.5 , height: 17.5))
earth.image = UIImage(named: "moonAndEarth.png")
earth.contentMode = UIViewContentMode.scaleAspectFill
earth.center.x = venus.center.x

var mars = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 140, width: 6, height: 6))
mars.image = UIImage(named: "mars.gif")
mars.contentMode = UIViewContentMode.scaleAspectFill
mars.center.x = sun.center.x

var jupiter = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 195, width: 40, height: 40))
jupiter.image = UIImage(named: "finalJupDraft.gif")
jupiter.contentMode = UIViewContentMode.scaleAspectFill
jupiter.center.x = sun.center.x

var saturn =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 240, width: 35, height: 35))
saturn.image = UIImage(named: "saturnDraftTop.png")
saturn.contentMode = UIViewContentMode.scaleAspectFill
saturn.center.x = sun.center.x


var uranus =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 270, width: 10, height: 10))
uranus.image = UIImage(named: "uranus.gif")
uranus.contentMode = UIViewContentMode.scaleAspectFill
uranus.center.x = sun.center.x

var neptune =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 300, width: 12.5, height: 12.5))
neptune.image = UIImage(named: "neptune.gif")
neptune.contentMode = UIViewContentMode.scaleAspectFill
neptune.center.x = sun.center.x

var pluto =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 325, width: 2, height: 2))
pluto.image = UIImage(named: "pluto.gif")
pluto.contentMode = UIViewContentMode.scaleAspectFill
pluto.center.x = sun.center.x


mainSpace.addSubview(sun)
sun.alpha = 0.0
sun.rotation(view: sun)

mainSpace.addSubview(mercury)
mercury.alpha = 0.0
mercury.orbit(view: mercury, center: mainSpace, radius: 65.0, time: 0.5)
mercury.create_circle(view: mainSpace, radius: 65.0)

mainSpace.addSubview(venus)
venus.alpha = 0.0
venus.create_circle(view: mainSpace, radius: 90.0)
venus.orbit(view: venus, center: mainSpace, radius: 90.0, time: 1.0)

mainSpace.addSubview(earth)
earth.alpha = 0.0
earth.create_circle(view: mainSpace, radius: 115)
earth.orbit(view: earth, center: mainSpace, radius: 115, time: 1.5/*4.0*/)
earth.rotation(view: earth)

mainSpace.addSubview(mars)
mars.alpha = 0.0
mars.create_circle(view: mainSpace, radius: 140)
mars.orbit(view: mars, center: mainSpace, radius: 140, time: 2.0/*6.0*/)

mainSpace.addSubview(jupiter)
jupiter.alpha = 0.0
jupiter.create_circle(view: mainSpace, radius: 195)
jupiter.orbit(view: jupiter, center: mainSpace, radius: 195, time: 2.5)//8.00)

mainSpace.addSubview(saturn)
saturn.alpha = 0.0
saturn.create_circle(view: mainSpace, radius: 240)
saturn.orbit(view: saturn, center: mainSpace, radius: 240, time: 3.0)//10.0)

mainSpace.addSubview(uranus)
uranus.alpha = 0.0
uranus.create_circle(view: mainSpace, radius: 270)
uranus.orbit(view: uranus, center: mainSpace, radius: 270, time: 3.5)//13.0)

mainSpace.addSubview(neptune)
neptune.alpha = 0.0
neptune.create_circle(view: mainSpace, radius: 300)
neptune.orbit(view: neptune, center: mainSpace, radius: 300, time: 4.0)//14.0)

mainSpace.addSubview(pluto)
pluto.alpha = 0.0
pluto.create_circle(view: mainSpace, radius: 325)
pluto.orbit(view: pluto, center: mainSpace, radius: 325, time: 4.5)//20.0)

UIView.animate(withDuration: 1.0, animations: {
    
    sun.alpha = 1.0
    
    }, completion: {finished in
        
        UIView.animate(withDuration: 1.0, animations: {
            
            mercury.alpha = 1.0
            
        }, completion: {finished in
            
            UIView.animate(withDuration: 1.0, animations: {
                
                venus.alpha = 1.0
                
            }, completion: {finished in
                
                UIView.animate(withDuration: 1.0, animations: {
                    
                    earth.alpha = 1.0
                    
                }, completion: {finished in
                    
                    UIView.animate(withDuration: 1.0, animations: {
                        
                        mars.alpha = 1.0
                        
                    }, completion: {finished in
                        
                        UIView.animate(withDuration: 1.0, animations: {
                            
                            jupiter.alpha = 1.0
                            
                        }, completion: {finished in
                            
                            UIView.animate(withDuration: 1.0, animations: {
                                
                                saturn.alpha = 1.0
                                
                            }, completion: {finished in
                                
                                UIView.animate(withDuration: 1.0, animations: {
                                    
                                    uranus.alpha = 1.0
                                    
                                }, completion: {finished in
                                    
                                    UIView.animate(withDuration: 1.0, animations: {
                                        
                                       neptune.alpha = 1.0
                                        
                                    }, completion: {finished in
                                        
                                        UIView.animate(withDuration: 1.0, animations: {
                                            
                                            pluto.alpha = 1.0
                                            
                                        }, completion: nil) // end of pluto animation
                                }) // end of neptune animation
                            }) // end of uranus animation
                        }) // end of saturn animation
                    }) // end of jupiter animation 
                }) // end of mars animation
            }) // end of earth animation
        }) //end of venus animation
    }) // end of mercury animation
}) // end of sun animation

PlaygroundPage.current.liveView = mainSpace
