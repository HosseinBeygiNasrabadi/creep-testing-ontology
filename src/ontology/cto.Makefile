## Default module type (slme)
$(IMPORTDIR)/mwo_import.owl: $(MIRRORDIR)/mwo.owl $(IMPORTDIR)/mwo_terms.txt \
			   $(IMPORTSEED) | all_robot_plugins
	$(ROBOT) annotate --input $< --remove-annotations \
		 odk:normalize --add-source true \
		 extract --term-file $(IMPORTDIR)/mwo_terms.txt \
		         --force true --copy-ontology-annotations true \
		         --individuals include \
		         --intermediates minimal \
		         --method SUBSET \
		 remove $(foreach p, $(ANNOTATION_PROPERTIES), --term $(p)) \
		        --term-file $(IMPORTDIR)/mwo_terms.txt  \
		        --select complement --select annotation-properties \
		 odk:normalize --base-iri https://w3id.org/pmd/ao \
		               --subset-decls true --synonym-decls true \
		 repair --merge-axiom-annotations true \
		 $(ANNOTATE_CONVERT_FILE)


#############################################################################
# lets add some additional annotations to the release artefacts
#############################################################################

CITATION="'Hossein Beygi Nasrabadi, Sojeil Molaei, and Jörg Waitelonis. Creep Testing Ontology (VCTO). Revision: v$(VERSION). Retrieved from: https://github.com/HosseinBeygiNasrabadi/creep-testing-ontology/$(VERSION)'"

ALL_ANNOTATIONS=--ontology-iri https://w3id.org/pmd/cto/ -V https://w3id.org/pmd/cto/$(VERSION) \
	--annotation http://purl.org/dc/terms/created "$(TODAY)" \
	--annotation http://purl.org/dc/terms/bibliographicCitation "$(CITATION)"  \
#	--link-annotation owl:priorVersion https://w3id.org/pmd/cto/$(PRIOR_VERSION) \

update-ontology-annotations: 
	$(ROBOT) annotate --input ../../cto.owl $(ALL_ANNOTATIONS) --output ../../vcto.owl && \
	$(ROBOT) annotate --input ../../cto.ttl $(ALL_ANNOTATIONS) --output ../../cto.ttl && \
	$(ROBOT) annotate --input ../../cto-simple.owl $(ALL_ANNOTATIONS) --output ../../cto-simple.owl && \
	$(ROBOT) annotate --input ../../cto-simple.ttl $(ALL_ANNOTATIONS) --output ../../cto-simple.ttl && \
	$(ROBOT) annotate --input ../../cto-full.owl $(ALL_ANNOTATIONS) --output ../../cto-full.owl && \
	$(ROBOT) annotate --input ../../cto-full.ttl $(ALL_ANNOTATIONS) --output ../../cto-full.ttl && \
	$(ROBOT) annotate --input ../../cto-base.owl $(ALL_ANNOTATIONS) --output ../../cto-base.owl && \
	$(ROBOT) annotate --input ../../cto-base.ttl $(ALL_ANNOTATIONS) --output ../../cto-base.ttl 
