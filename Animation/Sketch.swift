import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    var x2 : Int
    var y2 : Int
    var x3 : Int
    var y3 : Int
    var x4 : Int
    var y4 : Int
    //change the position
    var a : Double
    var a2 : Double
    var a3 : Double
    var a4 : Double
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        x2 = 0
        x3 = 0
        y = 0
        y2 = 0
        y3 = 0
        x4 = 0
        y4 = 0
        a = -100/(50 * 50)
        a2 = -150/(75 * 75)
        a3 = -200/(100 * 100)
        a4 = -230/(115 * 115)
        
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        x2 += 1
        x3 += 1
        x4 += 1
        y = Int(a * Double(x) * (Double(x)-100))
        y2 = Int(a * Double(x2) * (Double(x2)-150))
        y3 = Int(a * Double(x3) * (Double(x3)-200))
        y4 = Int(a * Double(x4) * (Double(x4)-230))
        
        
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: y, width: 20, height: 20)
        canvas.drawEllipse(centreX: x2, centreY: y2, width: 20, height: 20)
        canvas.drawEllipse(centreX: x3, centreY: y3, width: 20, height: 20)
        canvas.drawEllipse(centreX: x4, centreY: y4, width: 20, height: 20)
        
    }
    
}
