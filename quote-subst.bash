#!/usr/bin/env bash
q=\' f='echo "#!/usr/bin/env bash"; echo "q=\\$q f=$q$f$q; eval \$f"'; eval $f
