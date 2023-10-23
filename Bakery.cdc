pub contract Bakery {

    pub var bakery: {Address: Product}
    
    pub struct Product {
        pub let NameOfItem: String
        pub let SupplyAgent: String
        pub let price: Int
        pub let account: Address

        init(_NameOfItem: String, _SupplyAgent: String, _price: Int, _account: Address) {
            self.NameOfItem = _NameOfItem
            self.SupplyAgent = _SupplyAgent
            self.price = _price
            self.account = _account
        }
    }

    pub fun addStores(NameOfItem: String, SupplyAgent: String, price: Int, account: Address) {
        let newStores = Product(_NameOfItem: NameOfItem, _SupplyAgent: SupplyAgent, _price: price, _account: account)
        self.bakery[account] = newStores
    }

    init() {
        self.bakery = {}
    }

}
