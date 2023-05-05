# Some notes on the construction of a mass distribution which has a unique (up to symmetries) 8-partition:

Consider the unit cube and let A, B, C be a triple of its edges, pairwise skew. [Up to symmetries, there's only one choice.]
We distribute mass uniformly and equally along A, B, C [and then smooth the distribution out so that the support is connects, but that's later].
Each of the segments A, B, C is actually a thin cylinder [would another shape be better?] of uniform density, radius delta [delta << 1], and unit length, centered at the cube edge, but this is only relevant when a plane "contains" a segment.

We will assign mass 1 to each of A, B, C, for a total of 3 (!!).  So each bisecting plane needs mass 3/2 on each side, each quadrant 3/4, and each octant 3/8, in the 8-partition we seek.

The goal is to find 3 planes h1, h2, h3 that realize the 8-partition.

We start with some definitions:
- we say a plane h *crosses* segment X if it intersects it transversally [I suppose with a large enough angle,,, hmmm]
- we say that a plane h "contains" segment X if the ideal plane h contains ideal segment [explain better]
- we say that a plane h "properly intersects" segment X if some positive mass associated with X lies on *both* sides of h [See TROUBLE below]
- we say that a plane h "misses" X if all of the mass of X lies strictly to one side of h [TROUBLE: do we mean ALL of the mass, or all but an arbitrarily small amount; this pops up below...]

We consider the version of the problem where the orientation of h1 is **fixed**.  Let D be the main diagonal of the cube disjoint from A,B,C.  We choose h1 to be orthogonal to D.  It is easily checked that any plane orthogonal to D intersects A, B, C (if at all) transversally and cuts off the same fraction of all three edges, hence to be a bisecting plane h1 must pass through the midpoints a, b, c of A, B, C, respectively.

We call the 6 pieces obtained by cutting A, B, C by h1 **half-edges**: A+,A-,B+,B-,C+,C-, according to which of A,B,C they come from and what side of h1 they lie on.

We now proceed to prove (hopefully) that the choice of h2, h3 [so that h1,h2,h3 form an 8-partition] is unique, up to the interchange of h2 and h3 and symmetries of space.
Below when I write hX I mean h2 or h3 [or really any bisecting plane other than h1].

We begin with some observations to exclude configurations that do not lead to an 8-partition:

- A bisecting plane h cannot keep two of A,B,C fully on the same side [of h] (then that side contains mass 2 > 3/2)
- hX cannot have 3 half-segments on the same side *and* properly intersect another half-segment (then that side contains mass 3*(1/2)+something positive, so >3/2)
  - in particular, it cannot have one of A,B,C and *more than* half of another, on one side (1 + 1/2 + something positive > 3/2)
  - also it cannot have one of A,B,C and half of another, on one side, *and* properly intersect a third (same logic here)
- In the 8-partition, no half-segment can be missed by h2 *and* h3, as then this half-segment is fully contained in an octant (1/2 > 3/8)

[Potential issue in the above: Do we need to qualify how much "plus something positive" is, since we smooth out the measures? For example, by "missed" do we mean "totally to one side and not 'contained' in the plane", right?]

This reduces the cases to the following:

Category I: no plane "contains" a segment.

  It is not hard to see that the only cases, up to symmetry, remaining are WLOG:
  h2 meets A+,B+,C-
  h3 meets A-,B-,C+

  [Each half-segment has to be cut by at least one of the two planes.  hX cannot cross both A+ and A- [would need to contain A]. hX crossing A+,B+,C+ (or A-.B-,C-) is ruled out by observing that it would then contain 3*1/2+positive > 3/2 mass,]

  INSERT THE CALCULATION THAT SAYS THIS DOES NOT WORK, i.e., does not produce an 8-partition.

Category II: exactly one of hX contains a segment.

  WLOG: h2 contains A, h3 contains no segment

  This configuration is impossible: h2 meets both A+ and A- and can meet (has to *cross*) at most one other half-segment.  Which means that h3 has to meet 3 remaining half-segments, two of which are two halves of the *same* segment, so h3 has to contain that segment and we are in Category III.

Category III: both h2 and h3 contain a segment.

  The condition that no half-segment can be missed by all planes forces only feasible configuration (WLOG): [CHECK!]
  h2 contains A
  h3 contains B
  h2 crosses C+
  h3 crosses C- [check that reversing C-/C+ is a symmetric configuration]
