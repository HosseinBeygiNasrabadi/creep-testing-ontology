
![Build Status](https://github.com/materialdigital/creep-testing-ontology/actions/workflows/qc.yml/badge.svg)
# Creep Testing Ontology

Creep Testing Ontology (CTO) has been developed for representing the creep testing process, testing equipment and setup requirements, test specimen characteristics, loading and environmental conditions (e.g. stress, temperature, atmosphere), time-dependent deformation behavior, and related testing parameters and measurement procedures according to DIN EN ISO 204 standard.

## Repository Structure

This repository was developed and maintained using the [Ontology Development Kit (ODK)](https://github.com/INCATools/ontology-development-kit).
### Top-level directories
* **.github/oorkflows/:** GitHub configuration files, including CI workflows and templates.
* **src/:** Main development folder generated and managed through ODK.
  * **ontology/cto-edit.owl:** – Primary editable ontology file used during development (ontology editors' version).

### Ontology versions
* **cto-full.owl/ttl:** Complete ontology with all imports and full axiomatization.
* **cto-base.owl/ttl:** Core entities without extended imports.
* **cto-simple.owl/ttl:** Simplified version with basic subclass and existential axioms.
* **cto.owl/ttl:** Main ontology file contains the full version.

### Other files
* README.md, LICENSE.txt, CONTRIBUTING.md – Project overview, license, and contribution guidelines.
* mkdocs.yaml – Configuration for building the documentation site.


## Documentation
* **[Widoco List of Classes and Properties](https://hosseinbeyginasrabadi.github.io/creep-testing-ontology/)**


## Contact

Please use this GitHub repository's [Issue tracker](https://github.com/materialdigital/vickers-testing-ontology/issues) to request new terms/classes or report errors or specific concerns related to the ontology.
