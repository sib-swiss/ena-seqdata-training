

!!! example "Our story"
    Our project **Genetic variation of listeria in the cow brain** has the aim to gain knowledge about the genetic variability of listeria. At the start of the project, we want to know what kind of data is already available, and see whether we can re-analyze it to understand the genetic variation of *Listeria monocytogenes* associated with cows.

## Exercises

### Finding data

You are asked to figure out what kind of raw sequencing data is already available to do the analysis. As a start, we go to the [ENA search page](https://www.ebi.ac.uk/ena/browser/search), and type in *Listeria monocytogenes*  in the search box. 

**Exercise**: Look for *Listeria monocytogenes* in the general search. Do you find many raw read datasets? Are they all relevant to our question? 

??? success "Answer"
    At time of writing I find 28,613 runs associated with *Listeria monocytogenes*. They probably aren't all useful. For example, we are interested in Listeria associated with cows, and probably most of those entries have a different origin (e.g. food/lab). In addition, some might contain only a part of the genome because it's enriched by e.g. PCR, and there is variation in the sequencing technology used, which could complicate our downstream analysis. 

We probably want to search a bit more specific. Go to the [advanced search page](https://www.ebi.ac.uk/ena/browser/advanced-search). We will be looking for raw reads. Let's search for the following characteristics:

- Organism *Listeria monocytogenes*
- Illumina whole genome sequencing
- Host: cow (*Bos taurus*; lookup the taxonomy ID at [NCBI](https://www.ncbi.nlm.nih.gov/taxonomy))

Build a query by selecting the boxes and selecting and specifying fields. Have a particular look at:

- Taxonomy and related
- Host information
- Sequencing information

!!! hint 
    Find the description of all possible fields [here]([here](../assets/ENA%20Portal%20API%20-%20enaPortalAPI-doc-1.pdf)). 

 You'll notice that a search query will appear at the top of the page. What does your query look like?

??? success "Answer"
    Here's an example of a query you could end up with:
    ```
    tax_eq(1639) AND host_tax_id=9913 AND instrument_platform="ILLUMINA" AND library_strategy="WGS"
    ```

Ignore the other steps for now and click 'Search'. You will find the accession and the Run accession and the description of the run. 

**Exercise:** What kind of other information would you want to evaluate our search? 

??? success "Answer"
    Some information that might be nice:

    - To which original study and sample the run belongs
    - The host information
    - Where to find the data files
    - Date of sampling/submission
    - The geographic origin
    - The strain/serotype

You can change the results fields by going two steps back in the fields selection page. 

**Exercise**: Navigate to the 'Fields' page, and select **Manually select fields** to select fields that interest you and correspond to the required information in the answer above. Find all field descripts [here](../assets/ENA%20Portal%20API%20-%20enaPortalAPI-doc-1.pdf).

??? success "Answer"
    Here's an example of the fields you could have selected:

    ```
    study_accession,library_selection,country,collection_date,first_public,strain,host,host_status,isolation_source,serotype,submitted_ftp,fastq_ftp
    ```

Download the results as tsv. Are there many researchers that specified the serotype or strain? How about the isolation source?

### Downloading data

