import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var x1 : Int
    var x2 : Int
    var x3 : Int
    var x4 : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        x1 = 250
        x2 = 250
        x3 = 250
        x4 = 250
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 3
        x1-=3
        x2+=3
        x3-=3
        x4+=3
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        canvas.fillColor = Color.red
         canvas.drawEllipse(centreX: x1, centreY: 350, width: 50, height: 50)
        canvas.fillColor = Color.green
         canvas.drawEllipse(centreX: x2, centreY: 450, width: 50, height: 50)
        canvas.fillColor = Color.purple
         canvas.drawEllipse(centreX: x3, centreY: 150, width: 50, height: 50)
        canvas.fillColor = Color.orange
         canvas.drawEllipse(centreX: x4, centreY: 50, width: 50, height: 50)
    }
    
}
