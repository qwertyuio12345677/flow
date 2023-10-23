import Authentication from 0x01

transaction(Item: String, SupplyAgent: String, price: Int, account: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        Authentication.addStores(Item: Item, SupplyAgent: SupplyAgent, price : price, account: account)
    }
}
