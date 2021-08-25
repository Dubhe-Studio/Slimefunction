execute if score $keepInventory sfValue matches 0 run gamerule keepInventory false
execute if score $keepInventory sfValue matches 1 run gamerule keepInventory true
gamerule commandBlockOutput false
gamerule maxCommandChainLength 100000
