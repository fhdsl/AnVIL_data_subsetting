# Introduction

## The AnVIL Platform

The [NHGRI Analysis, Visualization, and Informatics Lab-space (AnVIL)](https://anvilproject.org/) is a web-based platform established to support genomics research and collaboration. AnVIL offers researchers access to a wide array of genomic datasets and computational tools, facilitating the analysis and interpretation of genomics data. 

The platform's resources encompass diverse data types, including but not limited to DNA sequences, variants, and functional annotations, enabling researchers to conduct in-depth investigations. AnVIL's interface provides a range of visualization options for data exploration, and its collaborative features foster interactions among researchers, thereby promoting the exchange of knowledge and expertise.

AnVIL serves as the preferred data repository (storage location) for many NIH funded projects. Because it also features many of the analysis tools researchers and clinicians like, such as RStudio, Bioconductor packages, and Galaxy, it can serve as a one-stop-shop.

## Subsetting Genomic Data

Genomic data is often on the order of gigabytes for a single sample. This can make many steps of research and clinical pipelines very time and resource intensive! Instead of spending extra time and resources up front, it can be convenient to take subsets of genomic data. Researchers can use software tools, usually via the command line, that take a random subset of reads from large genomic files.

Potential applications of subset genomic files include:

1. **Performance Testing**: Random subsets are useful for evaluating the performance of analysis pipelines or tools. Testing on a smaller dataset allows researchers to assess efficiency, accuracy, and potential issues before applying the pipeline to the entire dataset.

2. **Algorithm Development**: Researchers creating or fine-tuning algorithms may work with smaller subsets to speed up the development process and debug their code before scaling up to larger datasets.

3. **Method Validation**: Before conducting a comprehensive analysis, researchers might validate their methods on a smaller subset. This helps ensure the chosen approach is appropriate and produces valid results.

4. **Resource Planning**: Random subsets provide a representative sample for estimating computational resource requirements, helping researchers allocate sufficient computing power and storage for larger analyses.

5. **Pilot Studies**: Researchers might use random subsets to perform preliminary investigations, exploring data characteristics and patterns before committing to a full-scale analysis.

6. **Teaching and Training**: In educational settings, instructors can use manageable subsets for teaching students various analysis techniques without overwhelming them with the complexity of the entire dataset. It also reduces time waiting for analyses to complete.

7. **Quick Assessments**: Clinicians might use random subsets to quickly assess the presence of specific variants or mutations in patient samples, enabling rapid decision-making for urgent cases.

8. **Statistical Sampling**: For statistical studies, a random subset can provide representative data for estimating population characteristics without analyzing the entire dataset.

9. **Feasibility Studies**: Before investing resources in a comprehensive study, researchers might perform feasibility studies on subsets to gauge the potential outcomes and decide whether to proceed.

10. **Comparative Analyses**: Subsets of different datasets can be easily compared to identify similarities, differences, or trends, aiding in cross-study analyses.

11. **Quick Visualizations**: Generating visualizations and plots for subsets can offer initial insights and guide researchers in formulating more focused research questions.

12. **Publication Preparations**: When preparing data for publication, researchers might use subsets to create illustrative figures or example datasets while ensuring data privacy and confidentiality.

## Subsetting Data on AnVIL

The AnVIL platform offers a number of advantages compared to institutional servers or other computing resources, such as access to data, integrated tools and pipelines, scalability, and collaboration. Instead of moving data around, users might wish to subset genomic data directly on AnVIL.

We have designed a [WDL](https://openwdl.org/) (pronounced "widdle") workflow that can be run via [Terra on AnVIL](https://anvil.terra.bio/), subsetting `fastq` files prior to the next steps in your analysis or activity.

Check out the next chapter to learn how to run this workflow on AnVIL!

