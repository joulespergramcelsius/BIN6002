# BIN6002 - Proteomics project
*basics.sh* contains shell scripts for some simple actions.

## FASTA Documentation
https://fasta.bioch.virginia.edu/wrpearson/fasta/fasta_guide.pdf

## Explanation of FASTA searches by copilot
**GGSEARCH** is one of the sequence similarity search methods available within the **FASTA suite of programs**. Let me break it down for you:

1. **FASTA**: This program provides a heuristic search using a protein query. It's designed to find similar sequences in protein databases. Additionally, **FASTX** and **FASTY** can translate DNA queries before performing the search.

2. **SSEARCH**: This method is a local alignment search, meaning it focuses on finding local similarities between sequences. It's particularly useful for identifying conserved regions within proteins.

3. **GGSEARCH**: Unlike local alignment, **GGSEARCH** performs a global alignment search. It considers the entire query sequence and the entire database, aiming to find global similarities. This method is useful when you want to identify more distant homologs.

4. **GLSEARCH**: Similar to **GGSEARCH**, **GLSEARCH** also performs a global alignment search. However, it uses a global query against a local database. This approach is helpful for identifying related sequences within a specific subset of the database.

In summary, **GGSEARCH** is a global alignment method within the FASTA suite, allowing you to search for more distant homologs across protein databases. If you have any other questions or need further clarification, feel free to ask! 😊

For more details, you can explore the [EMBL-EBI FASTA Protein Similarity Search](https://www.ebi.ac.uk/Tools/sss/fasta/index.html) page¹.²

Source: Conversation with Bing, 2024-05-14
(1) FASTA/SSEARCH/GGSEARCH/GLSEARCH < Sequence Similarity Searching - EMBL-EBI. https://www.ebi.ac.uk/Tools/sss/fasta/index.html.
(2) Manpage of FASTA/SSEARCH/[T]FASTX/Y/LALIGN. https://fasta.bioch.virginia.edu/fasta_docs/fasta35.shtml.
(3) FASTA < EMBL-EBI. https://www.ebi.ac.uk/jdispatcher/sss/fasta.
