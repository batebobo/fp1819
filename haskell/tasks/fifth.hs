--use this definition for tree
data Tree a = Empty | Node a (Tree a) (Tree a)

tree = Node 1 
        (Node 12 
            (Node 4 
                Empty 
                Empty
            ) 
            (Node 2 
                Empty 
                (Node 4 
                    Empty 
                    Empty
                )
            )
        ) 
        (Node 21 
            (Node 6 
                Empty 
                Empty
            ) 
            (Node 3 
                Empty 
                Empty
            )
        )




--sum of the elements of a tree
--sumElements tree -> 53



--find the path with the biggest sum in the tree
--maxPath tree -> 28 in my example the path is 1 -> 21 -> 6


--for every leaf add 2 leaves with the same value as their parent
--and return the mew tree
--addLeaves 


--remove the current leaves from the tree and return the new tree
--removeLeaves


--function to insert a value in BST
--insertBST 1 BSTTree


--function to create BST from a list
--createBST


-- create a list traversing the tree left root right


--sort a list using BST 
--

