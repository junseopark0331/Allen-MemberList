import UIKit

protocol MemberDelegate: AnyObject {
    func addNewMember(_ member: Member)
    func updateMeber(index: Int,_ member: Member)
}

struct Member {
    
    static var memberNumbers: Int = 0
    
    let memberId: Int
    var name: String?
    var age: Int?
    var phone: String?
    var address: String?
    
    
    init(name: String?, age: Int?, phone: String?, address: String?) {
        
        self.memberId =  Member.memberNumbers
        
        self.name = name
        self.age = age
        self.phone = phone
        self.address = address
        
        Member.memberNumbers += 1
    }
    
    lazy var memberImage: UIImage? = {
        guard let name = name else{
            return UIImage(systemName: "person")
        }
        return UIImage(named: "\(name).png") ?? UIImage(systemName: "person")
    }()
    
    
    
}
