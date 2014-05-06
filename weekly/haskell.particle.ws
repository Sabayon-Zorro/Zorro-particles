# Entropy Matter, Automated Entropy Packages Build Service, example spec file
#DESCRIPTION="Pentoo fuzzers meta ebuild items nick'ed from for building
#HOMEPAGE="http://www.pentoo.ch"
# needed to build Sabayon Zorro Beta , then hopefully Sabayon Security Aduitor's Desktop Enviorment 
#(Bleeding edge Security testing)

# List of packages required to be built.
# Comma separated, example: app-foo/bar, bar-baz/foo
# Mandatory, cannot be empty
#Preemtive command="layman -L && layman -a pentoo && layman -S"
packages:
app-fuzz/Peach,app-fuzz/bed,app-fuzz/fuzzer-server,app-fuzz/http-fuzz,app-fuzz/ohrwurm,app-fuzz/slowhttptest,app-fuzz/smtp-fuzz, app-fuzz/smudge,net-analyzer/wfuzz,app-fuzz/fuzzdb



#SAB_BAD=" or app-crypt="name,name2"
#USE="${SAB_BAD} ${SAB_BROWSER} ${SAB_CODECS} ${SAB_COMMS} arrays would be a plus for neatness hear. 
# Enforce stable or unstable packages on emerge.
# yes = only stable packages are accepted
# no  = both stable and unstable packages are accepted
# inherit = inherit portage make.conf.* settings for ACCEPT_KEYWORDS
# Valid values are either "yes" or "no", "inherit"
# Default is: inherit
stable: yes

# Entropy repository where to commit packages
# Mandatory, cannot be empty
#repository: sabayon-zorro-hell?
repository: sabayon-hell

# Provide custom build arguments to Portage.
# Default is: --verbose --nospinner
# --ask and --buildpkgonly are not allowed and automatically filtered.
build-args: --verbose --oneshot --nospinner --quiet-build=y --quiet-fail --fail-clean=y --complete-graph

# Only build the packages without merging them into the system.
# Valid values are either "yes" or "no"
# Default is: no
# build-only: no

# Drop older packages in the same slot when adding an injected package.
# Injected packages come into play when 'build-only: yes'
# Default is: no
# drop-old-injected: no

# Allow Source Package Manager (Portage) repository change?
# Valid values are either "yes" or "no"
# Default is: no
spm-repository-change: no

# In case of Source Package Manager repository change, allow
# execution if the original repository does not contain
# the package anymore?
# Valid values are either "yes" or "no"
# Default is: no
spm-repository-change-if-upstreamed: yes

# Allow compiling package even if it's not actually installed on system?
# Valid values are either "yes" or "no"
# Default is: no
not-installed: no

# Allow soft-blockers in the merge queue? Packages will be unmerged if yes.
# Valid values are either "yes" or "no"
# Default is: yes
soft-blocker: yes

# Allow package unmerges in the merge queue? Packages will be unmerged if yes.
# Valid values are either "yes" or "no"
# Default is: yes
unmerge: yes

# Allow dependencies to be pulled in?
# Valid values are either "yes" or "no"
# Default is: no
dependencies: yes

# Allow package downgrade?
# Valid values are either "yes" or "no"
# Default is: no
downgrade: no

# Allow package rebuild?
# Valid values are either "yes" or "no"
# Default is: no
rebuild: no

# Make possible to continue if one or more packages fail to build?
# Valid values are either "yes" or "no"
# Default is: no
keep-going: yes

# Allow new USE flags?
# Valid values are either "yes" or "no"
# Default is: no
new-useflags: yes

# Allow removed USE flags?
# Valid values are either "yes" or "no"
# Default is: no
removed-useflags: yes

# Package pre execution script hook
# Valid value is path to executable file
# Env vars:
# MATTER_PACKAGE_NAMES       = space sep. list of names of the packages
# that would be built. It does not reflect the name of the failing packages,
# because they could be just dependencies of them.
# pkgpre: /home/fabio/repos/entropy/services/matter_examples/pkgpre.sh

# Package build post execution script hook, executed for each package
# Valid value is path to executable file
# Env vars:
# MATTER_PACKAGE_NAMES       = space sep. list of names of the packages
# that would be built. It does not reflect the name of the failing packages,
# because they could be just dependencies of them.
# pkgpost: /home/fabio/repos/entropy/services/matter_examples/pkgpost.sh

# Env vars:
# MATTER_PACKAGE_NAMES       = space sep. list of names of the packages
# that would be built. It does not reflect the name of the failing packages,
# because they could be just dependencies of them.
# MATTER_PORTAGE_FAILED_PACKAGE_NAME = exact name (atom, CPV) of the failing
# package, the one that triggered the buildfail hook.
# MATTER_PORTAGE_REPOSITORY = Portage repository from where the package
# comes from
# MATTER_PORTAGE_BUILD_LOG_DIR = directory containing all the build logs of
# the failed package
buildfail: /particles/hooks/buildfail.sh

# For more info regarding exported environment variables, please see:
# matter --help




app-admin/haskell-updater
dev-haskell/alex
dev-haskell/cabal
dev-haskell/cabal-install
dev-haskell/cgi
dev-haskell/deepseq
dev-haskell/fgl
dev-haskell/gluraw
dev-haskell/glut
dev-haskell/haddock
dev-haskell/happy
dev-haskell/haskell-platform
dev-haskell/haskell-src
dev-haskell/hscolour
dev-haskell/html
dev-haskell/http
dev-haskell/hunit
dev-haskell/mtl
dev-haskell/network
dev-haskell/objectname
dev-haskell/openglraw
dev-haskell/opengl
dev-haskell/parallel
dev-haskell/parsec
dev-haskell/quickcheck
dev-haskell/random
dev-haskell/regex-base
dev-haskell/regex-compat
dev-haskell/regex-posix
dev-haskell/statevar
dev-haskell/stm
dev-haskell/syb
dev-haskell/tensor
dev-haskell/text
dev-haskell/time
dev-haskell/transformers
dev-haskell/xhtml
dev-haskell/zlib
dev-lang/ghc
