## Validation Package for our EMMSAD'20 Paper on Systematic Architecture Reconstruction of Microservice-Based Software Systems

### Reviewing the Reconstructed Models of ``Lakeside Mutual``
---
If you are interested in reviewing the reconstruction models of [``Lakeside Mutual``](https://github.com/Microservice-API-Patterns/LakesideMutual) expressed in our modeling languages and in the form after finishing Activity 6 of our SAR modeling method as described in the paper, please follow these steps:
1. Clone this repository to your harddrive.
2. Download an Eclipse version pre-bundled with the plugins of our modeling languages from the [GitHub repository's release tab](https://github.com/SeelabFhdo/emmsad2020/releases).
3. Start the downloaded Eclipse version and import the files contained in the ``Reconstruction Models`` folder of the cloned repository.
4. The reconstruction models are contained in the folders ``customer-core``, ``customer-management-backend``, ``customer-self-service-backend``, ``policy-management-backend`` (each of which reflects one of the reconstructed backend microservices of ``Lakeside Mutual``), and ``technology`` (which reflects the refactored technology models as mentioned in the paper). The ``intermediate`` folder may be ignored. The extensions for the different types of models are as follows:  
   * ``.data``: Domain models.
   * ``.mapping``: Mapping models.
   * ``.operation``: Operation models.
   * ``.services``: Microservice models.
   * ``.technology``: Technology models.

Please note that the source code of ``Lakeside Mutual``, on which we based the validation of our SAR modeling method, is also contained in this repository. It is placed in the ``Validation LM Source Code`` folder.

The source code of our modeling languages may be found in this [GitHub repository](https://github.com/SeelabFhdo/lemma). 

### Retrieving the Data Mentioned in the Validation of ``Lakeside Mutual``
---
Please follow these steps to retrieve the data presented in the Validation section for the ``Lakeside Mutual`` application (e.g., number of lines of code (LOC) of the input file set, number of reconstructed domain concepts, etc.):
1. Clone this repository to your harddrive.
2. Run the ``execute_activities_and_derive_tex_vars.sh`` ``bash`` script to retrieve the data of the SAR modeling method's activities. Please note that we do not provide a version of the scripts for the Windows operating system. However, the raw script outputs can be found in the ``Produced Result Files`` folder of the cloned repository (these files have the ``.out`` extension).  
  Please note that the script simply invokes the sub-scripts ``activity-1-loc-analysis.sh``, ``activity-2-domain-analysis.sh``, and ``activity-3-service-analysis.sh`` on the top-level of this repository, as well as ``csv2tex_vars.py`` in the ``Produced Result Files`` folder of this repository. For the sub-scripts to work, the following prerequisites must be fulfilled:  
   * ``activity-1-loc-analysis.sh``: Requires the [``cloc``](https://github.com/AlDanial/cloc) utility. We used version 1.84 on Linux Mint 19.3.
   * ``activity-2-domain-analysis.sh``: Requires Java 11 or higher, because the script executes a preliminary static analyzer (cf. the ``static-analyzer-standalone.jar`` in this repository). If you have Java 11 installed, but it is not your default Java environment, please adapt the ``export_java_home.sh`` script in the cloned repository as described in its source code.
   * ``activity-3-service-analysis.sh``: The same prerequisites as for ``activity-2-domain-analysis.sh``apply.
   * ``csv2tex_vars.py``: Requires Python 3. We used version 3.6.9 on Linux Mint 19.3.
3. Besides its direct output, which partially reflects the data mentioned in the Validation section of our paper, the ``execute_activities_and_derive_tex_vars.sh`` script will produce the following files in the ``Produced Result Files`` folder of the cloned repository:  
   * ``activity-1-loc-analysis.csv``: Contains LOC information for the ``Lakeside Mutual`` source code, which we examined and that is also part of this repository in the ``Validation LM Source Code`` folder.  
   * ``activity-2-domain-analysis.csv``: Contains raw data related to the Domain Modeling SAR activity of the ``Lakeside Mutual`` validation. These data will be used to derive TeX variables from them leveraging the ``csv2tex_vars.py`` Python script. The resulting TeX variables were effectively included to produce our submitted paper via ``pdflatex``.  
   * ``activity-3-service-analysis.csv``: Like ``activity-2-domain-analysis.csv``, but with raw data related to the Service Modeling SAR activity of the ``Lakeside Mutual`` validation.  
   * ``tex_vars.tex``: Contains the TeX variables derived from the previously mentioned CSV files via ``csv2tex_vars.py``.

**If for technical reasons the scripts do not work, please refer to the ``Produced Result Files`` folder in the cloned repository. It contains raw outputs of executing each of the mentioned scripts on Linux Mint 19.3. The raw outputs are stored in the files with the ``.out`` extension.**
