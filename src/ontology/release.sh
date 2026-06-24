set -e

VERSION=1.0.0
PRIOR_VERSION=0.0.0
ONTBASE=https://w3id.org/pmd/cto
ANNOTATE_ONTOLOGY_VERSION="annotate -V $ONTBASE/releases/$VERSION/\$@ --annotation owl:versionInfo $VERSION"

sh run.sh make clean

sh run.sh make VERSION=$VERSION ONTBASE=$ONTBASE ANNOTATE_ONTOLOGY_VERSION="$ANNOTATE_ONTOLOGY_VERSION" prepare_release

sh run.sh make VERSION=$VERSION PRIOR_VERSION=$PRIOR_VERSION update-ontology-annotations