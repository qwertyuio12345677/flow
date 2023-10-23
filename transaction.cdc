import Bakery from 0x05

transaction(Item: String, SupplyAgent: String, price: Int, account: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        Bakery.addItem(Item: Item, SupplyAgent: SupplyAgent, price : price, account: account)
    }
}
