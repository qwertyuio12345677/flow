pub contract BakeryContract {

    pub struct BakeryItem {
        pub var itemName: String
        pub var itemPrice: UFix64
    }

    pub var bakeryItems: [BakeryItem]

    pub fun init() {
        self.bakeryItems = []
    }

    pub fun addItem(itemName: String, itemPrice: UFix64) {
        let newItem = BakeryItem(itemName: itemName, itemPrice: itemPrice)
        self.bakeryItems.append(newItem)
    }

    // Define a script to read the bakery items
    pub fun getBakeryItems(): [BakeryItem] {
        return self.bakeryItems
    }
}
