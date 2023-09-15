protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happen?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handle: EmergencyCallHandler) {
        handle.delegate =  self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per seconds.")
    }
    
}

let mario = EmergencyCallHandler()
let luigi = Paramedic(handle: mario)

mario.assessSituation()
mario.medicalEmergency()

class Doctor: AdvancedLifeSupport {
    
    init(handle: EmergencyCallHandler) {
        handle.delegate =  self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per seconds.")
    }
    
    func useStethescope() {
        print("Listening for heart sounds")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings stayihng alive by the BeeGees")
    }
    
    func useElectricDrill(){
        print("Whirr....")
    }
}

let john = Surgeon(handle: mario)

mario.medicalEmergency()
