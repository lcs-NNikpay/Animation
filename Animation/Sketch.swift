import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    //change the position
    var a : Double
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 1000)
        
        // Set starting position
        x = 0
        y = 0
        a = -100/(50 * 50)
        
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        for k in stride(from: 0, through: 900, by: 100) {
            y = Int(a * Double(x) * (Double(x)-100)) + k
            // Draw an ellipse in the middle of the canvas
            canvas.drawEllipse(centreX: x, centreY: y, width: 20, height: 20)
        }
        
       
    }
    
}
