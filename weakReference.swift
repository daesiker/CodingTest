class Man {
    var name:String
    unowned var woman:Woman?

    init(_ name: String) {
        self.name = name
        print("\(name) init")
    }

    deinit {
        print("\(name) deinit")
    }

}

class Woman {
    var name:String
    var man: Man?

    init(_ name: String) {
        self.name = name
        print("init")
    }

    func pprint() {
        print("해해해")
    }

    deinit {
        print("deinit")
    }

}

Woman("여자").pprint()
