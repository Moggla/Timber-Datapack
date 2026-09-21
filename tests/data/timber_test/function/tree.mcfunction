#> Generates a vanilla worldgen tree with its trunk base at ~20 ~ ~20, the middle of the arena
#> Not closer to the origin: the tree can't grow into the origin column (PackTest keeps something there), place feature fails silently
#> @param feature configured feature id, e.g. "minecraft:oak"
$place feature $(feature) ~20 ~ ~20
