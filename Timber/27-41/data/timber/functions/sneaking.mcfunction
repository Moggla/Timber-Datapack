# standing or sneaking enabled?
execute if score standing timber matches 1.. unless predicate timber:sneaking run function timber:run
execute if score sneaking timber matches 1.. if predicate timber:sneaking run function timber:run