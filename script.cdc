import Authentication from 0x01

pub fun main(account: Address): Bakery.Product {
    return Bakery.Product[account]!
}
