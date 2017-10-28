import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    // change position of the circle
    var dx : Int
    var dy : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 600, height: 500)
        
        // Set starting position
        x = random(from: 0, toButNotIncluding: 501)
        y = random(from: 0, toButNotIncluding: 501)
        // set the change value
        dx = 2
        dy = 2
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
       
        // Change position
        x += dx
        y += dy
       
        // make it bounce at right
       
        if x > 600{//start of the block
            dx = -2 //move to the left
        }
            if x<0 {
                dx = 2
            }
        if y > 500{
            dy = -2
        }
        if y<0{
            dy = 2
        }
          
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.white
        canvas.drawRectangle(centreX: 350, centreY: 250, width: 700, height: 500)
        canvas.fillColor=Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    
    
}
}

