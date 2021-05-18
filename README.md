# tsp-solver
 MATLAB toolkit of the Travelling Salesman Problem (TSP).
 Under construction...


## files
```
.
├── china32.tsp —— [the tsp file for examples]
├── readfile.m —— [read the file with name '*.tsp']
├── drawtour.m —— [draw the tour path using lines]
└── tourlength.m —— [calculate the given tour's length]
```

## usage

```matlab
[n, coordinate, distance] = readfile(filename)
```

```matlab
drawtour(sequence, coordinate)
```

![tour](/img/tour.gif)

```matlab
length = tourlength(sequence, coordinate)
```

