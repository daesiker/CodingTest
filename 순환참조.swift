class Man {
    var name:String
    var woman:Woman?

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
        print("\(name) init")
    }

    deinit {
        print("\(name) deinit")
    }

}

var boy:Man? = Man("daesiker")
var girl:Woman? = Woman("dlwlrma")

boy?.woman = girl
girl?.man = boy

boy?.woman = nil
girl?.man = nil

boy = nil
girl = nil
