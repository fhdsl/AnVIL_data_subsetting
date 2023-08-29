# Bringing the WDL Workflow to AnVIL

## Find the Workflow on Dockstore

Navigate to the WORKFLOWS tab of your workspace. Select "Find a Workflow". 

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_0.png" title="The WORKFLOWS tab of AnVIL workspace is selected, with the Find a Workflow button highlighted." alt="The WORKFLOWS tab of AnVIL workspace is selected, with the Find a Workflow button highlighted." width="100%" style="display: block; margin: auto;" />

When the dialog box opens, select "Dockstore" on the bottom left. This will take you to the [Dockstore search page](https://dockstore.org/search?descriptorType=WDL&entryType=workflows&searchMode=files).

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_5.png" title="The Suggested Workflows popup. The option to find additional workflows on Dockstore is highlighted." alt="The Suggested Workflows popup. The option to find additional workflows on Dockstore is highlighted." width="100%" style="display: block; margin: auto;" />

Enter `fastq_subsample` in the search box. Select the workflow "fhdsl/AnVIL_WDLs/fastq_subsample".

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_21.png" title="On Dockstore, fastq_subsample has been entered in the search box. There is one result, for a WDL workflow called fastq_subsample." alt="On Dockstore, fastq_subsample has been entered in the search box. There is one result, for a WDL workflow called fastq_subsample." width="100%" style="display: block; margin: auto;" />

## Send the Workflow to AnVIL

On the right side "Launch with" menu, select "AnVIL". This will open a new tab.

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_26.png" title="The AnVIL button on the Launch with menu is highlighted." alt="The AnVIL button on the Launch with menu is highlighted." width="100%" style="display: block; margin: auto;" />

Select the appropriate workspace where you want the workflow to appear. Select "IMPORT".

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_31.png" title="On an AnVIL themed page, the user has selected the epigenetics-introduction workspace and the IMPORT button is highlighted." alt="On an AnVIL themed page, the user has selected the epigenetics-introduction workspace and the IMPORT button is highlighted." width="100%" style="display: block; margin: auto;" />

You should now be back on AnVIL!

# Set Up the Workflow

## Set Up Inputs

Use the "SELECT DATA" button to select the samples (rows) you want to subset. You can select all or some samples.

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_45.png" title="The workflow setup page on AnVIL has the option to SELECT DATA highlighted." alt="The workflow setup page on AnVIL has the option to SELECT DATA highlighted." width="100%" style="display: block; margin: auto;" />

Indicate which columns in the DATA tab are used as workflow inputs.

The first workflow input should be a fastq or zipped fastq file. The workflow calls this input `fastqgz_file_read_1`. Under "Attribute" select the column that contains a link to the first set of reads. 

:::{.notice}
For single-end sequencing, the `fastqgz_file_read_1` input is the only file containing sequencing reads in your data.

For paired-end sequencing, the `fastqgz_file_read_1` input is the first of two read files.
:::

In this example, the column with the fastq file link is called "read1". It will look like "this.read1" under "Attribute".

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_50.png" title="The workflow inputs tab shows 4 possible inputs. The first is called 'fastqgz_file_read_1' and should be of the type 'File'. The entry 'this.read' is highlighted from the Attribute dropdown menu." alt="The workflow inputs tab shows 4 possible inputs. The first is called 'fastqgz_file_read_1' and should be of the type 'File'. The entry 'this.read' is highlighted from the Attribute dropdown menu." width="100%" style="display: block; margin: auto;" />

Select additional inputs. 

- **Required**: In this example, we've selected "sample_id" as the column containing the name of the sample. This names the output file appropriately. 

- *Optional*: "read2" indicates the second set of reads in our paired-end sequencing approach. Skip this if you have single-end reads.

- *Optional*: Indicate how many reads you want in your subsample file. In this example, we wanted 20,000 reads. (Default: 10,000)

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_55.png" title="The remaining 3 workflow inputs have been populated with Attributes as follows: sample_id is this.sample_id; fastqgz_file_read_2 is this.read2; and n is 20000." alt="The remaining 3 workflow inputs have been populated with Attributes as follows: sample_id is this.sample_id; fastqgz_file_read_2 is this.read2; and n is 20000." width="100%" style="display: block; margin: auto;" />

## Set Up Outputs

Workflow outputs are written to a Google Bucket. Setting up the workflow outputs creates links to these outputs inside the DATA in our workspace, making them easier to locate. 

Select the "OUTPUTS" tab. Select "Use defaults" to use the default output column naming schema. 

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_60.png" title="On the outputs tab of the workflow setup is highlighted. Use defaults option is highlighted. The two outputs, read1_subsample and read2_subsample are set to the default values under attributes. These are 'this.read1_subsample' and 'this.read2_subsample'." alt="On the outputs tab of the workflow setup is highlighted. Use defaults option is highlighted. The two outputs, read1_subsample and read2_subsample are set to the default values under attributes. These are 'this.read1_subsample' and 'this.read2_subsample'." width="100%" style="display: block; margin: auto;" />

Click "SAVE".

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_66.png" title="The SAVE button for workflow inputs and outputs is highlighted." alt="The SAVE button for workflow inputs and outputs is highlighted." width="100%" style="display: block; margin: auto;" />

# Run the Workflow

## Start the Run

Once you have saved the inputs and outputs, click on RUN ANALYSIS.

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_76.png" title="The RUN ANALYSIS button is highlighted." alt="The RUN ANALYSIS button is highlighted." width="100%" style="display: block; margin: auto;" />

## Monitor the Run

Navigate to the JOB HISTORY tab. You can see your most recent submissions in table form. Click on the most recent submission. Notice how each sample gets its own job. This keeps the whole process speedy!

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_81.png" title="The page reflects submission IDs and time submitted. Several runs have launched for each sample. The workflow status is 'Running' for all 8 samples." alt="The page reflects submission IDs and time submitted. Several runs have launched for each sample. The workflow status is 'Running' for all 8 samples." width="100%" style="display: block; margin: auto;" />

## Inspect the Run Results

You should see the status change to "Succeeded" if everything completed correctly.

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_86.png" title="Workflow status is now succeeded for all 8 samples, with a check mark." alt="Workflow status is now succeeded for all 8 samples, with a check mark." width="100%" style="display: block; margin: auto;" />

:::{.notice}
After 24 hours, you can also see the costs associated with each run under "Run Cost".
:::

## Inspecting Other Run Files

It can be helpful to look at intermediate files on Google Cloud Platform, especially if runs did not complete successfully. You can view these files by clicking on the folder icon for "Execution directory".

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_92.png" title="The folder icon indicating execution directory besides the workflow job for one sample is highlighted." alt="The folder icon indicating execution directory besides the workflow job for one sample is highlighted." width="100%" style="display: block; margin: auto;" />

For each run, you can see a number of associated files, including the output `.fq` files and log files.

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_97.png" title="Files for the workflow on GCP are shown. There are two fastq files that were created as well as 3 log files that are relevant for debugging, including sample_file.log, stderr, and stdout." alt="Files for the workflow on GCP are shown. There are two fastq files that were created as well as 3 log files that are relevant for debugging, including sample_file.log, stderr, and stdout." width="100%" style="display: block; margin: auto;" />

Click on `stdout` and/or `stderr` and "DOWNLOAD" to view the terminal output.

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_109.png" title="The DOWNLOAD button is highlighted." alt="The DOWNLOAD button is highlighted." width="100%" style="display: block; margin: auto;" />

Here is what your output in `stdout` might look like.

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_125.png" title="Terminal monospace text shows the following: Creating a subsampled file with 20000 lines. Created SRR10152993_1_subsample.fq. Subsampling paired-end reads for SRR10152993. Created SRR10152993_2_subsample.fq." alt="Terminal monospace text shows the following: Creating a subsampled file with 20000 lines. Created SRR10152993_1_subsample.fq. Subsampling paired-end reads for SRR10152993. Created SRR10152993_2_subsample.fq." width="100%" style="display: block; margin: auto;" />

## Confirming Results in the DATA tab

We can see that the subsample files have been linked in the DATA table "sample".

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_139.png" title="On the DATA tab of the workspace, a new column has been created called read1_subsample. There are 8 files corresponding to each original file." alt="On the DATA tab of the workspace, a new column has been created called read1_subsample. There are 8 files corresponding to each original file." width="100%" style="display: block; margin: auto;" />

In our example, we have a mixture of single-end and paired-end reads, so only the paired-end samples get a second file.

<img src="02-workflow_files/figure-html//1zUiupDXMZlZEIditsN5igggOim9qIrR9Ckf4N8fSAB8_g2794677b0ab_0_144.png" title="On the DATA tab of the workspace, a new column has been created called read2_subsample. There are 4 files corresponding to each original file that had paired-end reads." alt="On the DATA tab of the workspace, a new column has been created called read2_subsample. There are 4 files corresponding to each original file that had paired-end reads." width="100%" style="display: block; margin: auto;" />

You should now be able to use the subset files for downstream applications!
