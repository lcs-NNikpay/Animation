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
    //change the position
    var a : Double
    var a2 : Double
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        x2 = 0
        y = 0
        y2 = 0
        a = -100/(50 * 50)
        a2 = -150/(75 * 75)
        
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        x2 += 1
        y = Int(a * Double(x) * (Double(x)-100))
        y2 = Int(a * Double(x2) * (Double(x2)-150))
        
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: y, width: 20, height: 20)
        canvas.drawEllipse(centreX: x2, centreY: y2, width: 20, height: 20)
        
    }
    
}
