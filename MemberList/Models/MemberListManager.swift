import Foundation

final class MemberListManager {
    
    private var membersList: [Member] = []
    
    func makeMemebersListDatas(){
        membersList = [
            Member(name: "홍길동", age: 10, phone: "010-1111-1111", address: "서울"),
            Member(name: "임꺽정", age: 20, phone: "010-2222-2222", address: "서울"),
            Member(name: "스티브", age: 30, phone: "010-3333-3333", address: "미국"),
            Member(name: "쿡", age: 40, phone: "010-4444-4444", address: "캘리포니아"),
            Member(name: "베조스", age: 50, phone: "010-5555-5555", address: "하와이"),
            Member(name: "배트맨", age: 60, phone: "010-6666-6666", address: "고담씨티"),
            Member(name: "조커", age: 70, phone: "010-7777-7777", address: "고담씨티")
        ]
    }
    
    func getMemberList() -> [Member] {
        return membersList
    }
    
    func makeNewMember(_ member: Member) {
        membersList.append(member)
    }
    
    func updateMemberInfo(index: Int, _ member: Member) {
        membersList[index] = member
    }
    
    subscript(index: Int) -> Member {
        get {
            return membersList[index]
        }
        set {
            membersList[index] = newValue
        }
    }
    
}
