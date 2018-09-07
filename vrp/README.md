# Testing the approach of implementing as a Vehicle Routing Problem

The idea is to make the external controller as an extra station and add a link from every node to the controller and simulate the VRP problem in our.

We would still have the capacity, which would have to be C + 2, because of the going to and from the controller.

We would have to make sure that all links that do not include the controller

We also have to keep track that the amount of routes that exit the controller have to come back as well


Então, nosso objetivo seria:

Minimize Sum(Nodes leaving the controller) X_{af}

Subject to:

Sum(OUTf(u) UNION A_{v0OUT}) = Sum(INf(u) UNION A_{voIN})