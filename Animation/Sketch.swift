import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x1 : Int
    var x2 : Int
    var x3 : Int
    var x4 : Int
    var y  : Int
    var y1 :Int
    var y2 : Int
    var y3 : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        // Set starting position
        x1 = 250
        x2 = 250
        x3 = 250
        x4 = 250
        y = 250
        y1 = 250
        y2 = 250
        y3 = 250
        // No borders
        canvas.drawShapesWithBorders = false
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //clean up from the last time
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: -5)
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        // Change position
        
        x1-=3
        x2-=3
        x3+=3
        x4+=3
        y-=3
        y1+=3
        y2-=3
        y3+=3
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(centreX: x1, centreY: y, width: 50, height: 50)
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: x2, centreY: y1, width: 50, height: 50)
        canvas.fillColor = Color.purple
        canvas.drawEllipse(centreX: x3,centreY: y2, width: 50, height: 50)
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: x4,centreY: y3, width: 50, height: 50)
    }
    
    
}
