import Bakery from 0x05

pub fun main(account: Address): Bakery.Product {
    return Bakery.bakery[account]!
}
