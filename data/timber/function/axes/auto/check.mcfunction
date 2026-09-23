# an axe that is in the list already (found before, or added with timber:api/add_axe) keeps its values
$execute if data storage timber:axes list[{item:"$(item)"}] run return 0
function timber:axes/auto/add with storage timber:axes auto
