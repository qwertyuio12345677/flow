// Transaction to add items to the bakery
transaction {
    execute {
        let bakeryAccount = getAccount(0x01) 
        let adminRef = bakeryAccount.getCapability<&BakeryContract.BakeryItemCollection{BakeryContract.BakeryItemPublic}>(BakeryContract.BakeryItemPublicPath)!
        
        adminRef.borrow()?.addItem(itemName: "Croissant", itemPrice: 2.99)
        adminRef.borrow()?.addItem(itemName: "Muffin", itemPrice: 1.99)
    }
}
