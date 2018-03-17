#!/bin/bash
q=\' f='echo "#!/bin/bash"; echo "q=\\$q f=$q$f$q; eval \$f"'; eval $f
