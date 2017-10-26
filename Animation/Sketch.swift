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
        x = 200
        x1 = 200
        x2 = 200
        x3 = 200
        x4 = 200
        // No borders
        canvas.drawShapesWithBorders = false
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //clean up from the last time
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: -5)
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        // Change position
        x += 1
        x1-=1
        x2-=3
        x3+=3
        x4+=2
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(centreX: x1, centreY: 200, width: 50, height: 50)
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: x2, centreY: 300, width: 50, height: 50)
        canvas.fillColor = Color.purple
        canvas.drawEllipse(centreX: x3,centreY: 150, width: 50, height: 50)
        canvas.drawEllipse(centreX: x4,centreY: 350, width: 50, height: 50)
    }

    
}
