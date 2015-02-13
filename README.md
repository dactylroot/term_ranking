# term_ranking
Matlab Functions for Text Data Feature Extraction

Given an input n-by-w frequency matrix of n documents with frequency counts for each of w words in each document:
* I'd feed this through make_cooccurrence to make a cooccurrence matrix of the words
* I'd call ent(mi(cooccurrence)) for the mutual information entropy and compare this to other ranking methods.