//
//  InterfaceController.swift
//  Ultimate Pranks WatchKit Extension
//
//  Created by Jason Tezanos on 3/14/15.
//  Copyright (c) 2015 We Make Apps. All rights reserved.
//

import WatchKit
import Foundation

struct RowData {
    let prankname: String
    let prankimagename: String
    let pranksound: String
    let soundtype : String
}


class InterfaceController: WKInterfaceController {
    
    
    @IBOutlet weak var prankTable: WKInterfaceTable!
    
    let objects: [RowData] = [
        RowData(prankname: "Witch", prankimagename: "hat", pranksound: "bacdeth1", soundtype: "wav"),
        RowData(prankname: "Witch2", prankimagename: "hat", pranksound: "bacidle1", soundtype: "wav"),
        RowData(prankname: "Witch3", prankimagename: "hat", pranksound: "bacsite2", soundtype: "wav"),
        
        RowData(prankname: "Impact", prankimagename: "knife", pranksound: "bgrapple_impact", soundtype: "wav"),
        RowData(prankname: "Rip", prankimagename: "zombie", pranksound: "bodstrk12", soundtype: "wav"),
        RowData(prankname: "Tear", prankimagename: "zombie", pranksound: "bodstrk13", soundtype: "wav"),
        
        RowData(prankname: "Grumble", prankimagename: "devil", pranksound: "branchrp", soundtype: "wav"),
        RowData(prankname: "Bat", prankimagename: "pumpkin", pranksound: "chbmdie", soundtype: "wav"),
        RowData(prankname: "Screech", prankimagename: "witch", pranksound: "chrtsght1", soundtype: "wav"),
        
        RowData(prankname: "Daemon", prankimagename: "reaver", pranksound: "chrtwoun1", soundtype: "wav"),
        RowData(prankname: "Whoosh", prankimagename: "pumpkin", pranksound: "consbiop2", soundtype: "wav"),
        RowData(prankname: "Gremlin", prankimagename: "gremlin", pranksound: "conschrp", soundtype: "wav"),
        
        RowData(prankname: "Ghost", prankimagename: "ghost", pranksound: "conswoun1", soundtype: "wav"),
        RowData(prankname: "Ghost Pass", prankimagename: "ghost", pranksound: "conswoun2", soundtype: "wav"),
        RowData(prankname: "Hiss", prankimagename: "dragon", pranksound: "singleroar", soundtype: "mp3"),
        
        RowData(prankname: "DMG", prankimagename: "knife", pranksound: "criticalDMG", soundtype: "wav"),
        RowData(prankname: "Death", prankimagename: "reaver", pranksound: "DeamonDie", soundtype: "wav"),
        RowData(prankname: "Dragon", prankimagename: "dragon", pranksound: "Dragon00", soundtype: "wav"),
        
        RowData(prankname: "Dragon 2", prankimagename: "dragon", pranksound: "Dragon01", soundtype: "wav"),
        RowData(prankname: "Ghastly", prankimagename: "ghost", pranksound: "Ghost", soundtype: "wav"),
        RowData(prankname: "Growl", prankimagename: "wolf", pranksound: "growl1", soundtype: "wav"),
        
        RowData(prankname: "Growl 2", prankimagename: "wolf", pranksound: "growl2", soundtype: "wav"),
        RowData(prankname: "Cut", prankimagename: "knife", pranksound: "HachaRanaOK", soundtype: "wav"),
        RowData(prankname: "Hell Knight", prankimagename: "dragon", pranksound: "hell_knight_exhale02", soundtype: "wav"),
        
        RowData(prankname: "Hell Knight2", prankimagename: "dragon", pranksound: "Hell_Knight_Inhale02", soundtype: "wav"),
        RowData(prankname: "Beast", prankimagename: "gremlin", pranksound: "hiss_beast_screech", soundtype: "mp3"),
        RowData(prankname: "Smash", prankimagename: "knife", pranksound: "HITGIBS", soundtype: "wav"),
        
        RowData(prankname: "Hell Slash", prankimagename: "dragon", pranksound: "HKight_Attack_Melee01", soundtype: "wav"),
        RowData(prankname: "Flap", prankimagename: "dragon", pranksound: "hoppflap", soundtype: "wav"),
        RowData(prankname: "Glitchy", prankimagename: "skull", pranksound: "hoppidle1", soundtype: "wav"),
        
        RowData(prankname: "TV", prankimagename: "skull", pranksound: "hoppidle2", soundtype: "wav"),
        RowData(prankname: "Horror", prankimagename: "skull", pranksound: "hoppsght", soundtype: "wav"),
        RowData(prankname: "Swoosh", prankimagename: "pumpkin", pranksound: "malo2", soundtype: "wav"),
        
        RowData(prankname: "Reaver", prankimagename: "reaver", pranksound: "malo3", soundtype: "wav"),
        RowData(prankname: "Rage", prankimagename: "dragon", pranksound: "malo4", soundtype: "wav"),
        RowData(prankname: "Angry", prankimagename: "gremlin", pranksound: "malo5", soundtype: "wav"),
        
        RowData(prankname: "Slice", prankimagename: "knife", pranksound: "MEET01_22", soundtype: "wav"),
        RowData(prankname: "Pain", prankimagename: "knife", pranksound: "Pain3", soundtype: "wav"),
        RowData(prankname: "Dice", prankimagename: "knife", pranksound: "PDMG_MORR1_44", soundtype: "wav"),
        
        RowData(prankname: "Flesh", prankimagename: "knife", pranksound: "PDMG_MORR2_44", soundtype: "wav"),
        RowData(prankname: "Dragging", prankimagename: "zombie", pranksound: "pinky_drags_body_01", soundtype: "wav"),
        RowData(prankname: "Creeping", prankimagename: "zombie", pranksound: "pinky_drags_body_02", soundtype: "wav"),
        
        RowData(prankname: "Crunch", prankimagename: "knife", pranksound: "plasdie", soundtype: "wav"),
        RowData(prankname: "Eerie", prankimagename: "pumpkin", pranksound: "Poingigigi", soundtype: "wav"),
        RowData(prankname: "Phantom", prankimagename: "ghost", pranksound: "quenchrp2", soundtype: "wav"),
        
        RowData(prankname: "Werewolf", prankimagename: "wolf", pranksound: "rhnodie", soundtype: "wav"),
        RowData(prankname: "Werewolf2", prankimagename: "wolf", pranksound: "rhnosght", soundtype: "wav"),
        RowData(prankname: "Swing", prankimagename: "wolf", pranksound: "roywbite1", soundtype: "wav"),
        
        RowData(prankname: "Bite", prankimagename: "wolf", pranksound: "roywbite2", soundtype: "wav"),
        RowData(prankname: "Warn", prankimagename: "wolf", pranksound: "roywdie1", soundtype: "wav"),
        RowData(prankname: "Moan", prankimagename: "wolf", pranksound: "roywdie2", soundtype: "wav"),
        
        RowData(prankname: "Otherworld", prankimagename: "gremlin", pranksound: "roywdie3", soundtype: "wav"),
        RowData(prankname: "Lunge", prankimagename: "dragon", pranksound: "roywsght2", soundtype: "wav"),
        RowData(prankname: "Scream", prankimagename: "hat", pranksound: "ScreamHollow", soundtype: "wav"),
        
        RowData(prankname: "Breath", prankimagename: "dragon", pranksound: "seadeth1", soundtype: "wav"),
        RowData(prankname: "Slicer", prankimagename: "saw", pranksound: "slicer5", soundtype: "wav"),
        RowData(prankname: "Grinder", prankimagename: "saw", pranksound: "slrun", soundtype: "wav"),
        
        RowData(prankname: "Hollow", prankimagename: "witch", pranksound: "spitdie", soundtype: "wav"),
        RowData(prankname: "Fly By", prankimagename: "witch", pranksound: "spitwoun1", soundtype: "wav"),
        RowData(prankname: "Beam", prankimagename: "witch", pranksound: "spitwoun2", soundtype: "wav"),
        
        RowData(prankname: "Swirl", prankimagename: "knife", pranksound: "Swirl01", soundtype: "wav"),
        RowData(prankname: "Swirl2", prankimagename: "knife", pranksound: "Swirl02", soundtype: "wav"),
        RowData(prankname: "Swirl3", prankimagename: "knife", pranksound: "Swirl03", soundtype: "wav"),
        
        RowData(prankname: "Swirl4", prankimagename: "knife", pranksound: "Swirl04", soundtype: "wav"),
        RowData(prankname: "Earth Shake", prankimagename: "devil", pranksound: "tankbrst", soundtype: "wav"),
        RowData(prankname: "Minion", prankimagename: "devil", pranksound: "tankwoun2", soundtype: "wav"),
        
        RowData(prankname: "Pure Fear", prankimagename: "witch", pranksound: "teleon", soundtype: "wav"),
        RowData(prankname: "Groan", prankimagename: "gremlin", pranksound: "warrbite3", soundtype: "wav"),
        RowData(prankname: "Breath", prankimagename: "dragon", pranksound: "warrdie3", soundtype: "wav"),
        
        RowData(prankname: "Big Foot", prankimagename: "skull", pranksound: "warrdie4", soundtype: "wav"),
        RowData(prankname: "Creature", prankimagename: "devil", pranksound: "warrdie5", soundtype: "wav"),
        RowData(prankname: "Yeti", prankimagename: "pumpkin", pranksound: "YetiAppear", soundtype: "wav"),

        
        
    ]
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
    }
    
    
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        
        println(rowIndex)
        var prankdict = objects[rowIndex]
        var soundtype = prankdict.pranksound
        var soundversion = prankdict.soundtype
        println(soundtype)
        let dictionary = ["tone":soundtype, "type":soundversion]
        
        WKInterfaceController.openParentApplication(dictionary) {
            (replyInfo, error) -> Void in
            
            if replyInfo != nil{
                println("done")
            }
        }
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let rows = objects.map() { _ in "PrankTableRow" }
        prankTable.setRowTypes(rows)
        
        for i in 0 ..< objects.count {
            let object = objects[i];
            if let row = prankTable.rowControllerAtIndex(i) as? PrankTableRow {
                row.rowTitle.setText(object.prankname)
                row.rowImage.setImageNamed(object.prankimagename)
            }
        }
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}