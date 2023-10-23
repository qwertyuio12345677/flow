// Script to read bakery items
pub fun main(): [BakeryContract.BakeryItem] {
    let bakeryAccount = getAccount(0x01) 
    let bakeryRef = bakeryAccount.getCapability<&BakeryContract.BakeryItemCollection{BakeryContract.BakeryItemPublic}>(BakeryContract.BakeryItemPublicPath)!
    return bakeryRef.borrow()?.getBakeryItems() ?? []
}
