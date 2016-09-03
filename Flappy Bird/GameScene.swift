//
//  GameScene.swift
//  Flappy Bird
//
//  Created by Zoe on 9/3/16.
//  Copyright (c) 2016 Zoe. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
     var bird = SKSpriteNode()
    
    override func didMoveToView(view: SKView) { //like viewDidLoad
        
        //Everything that appears on the screen is a node
        
        let birdTexture = SKTexture(imageNamed: "flappy1.png")
        let birdTexture2 = SKTexture(imageNamed: "flappy2.png")
        
        let animation = SKAction.animateWithTextures([birdTexture, birdTexture2], timePerFrame: 0.1)
        let makeBirdFlap = SKAction.repeatActionForever(animation)
        bird = SKSpriteNode(texture: birdTexture)
        
        bird.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame))
        
        bird.runAction(makeBirdFlap)
        
        self.addChild(bird)
        
       
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
