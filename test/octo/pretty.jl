module test_octo_pretty

using Test
import Octo: Pretty

nts = [(id=1,name="John"),(id=2,name="Tom")]
@test Pretty.table(nts) == """
|   id | name   |
| ---- | ------ |
|    1 | John   |
|    2 | Tom    |
2 rows."""

Pretty.set(colsize=30)
nts = [(id=1,case="글씨가 넘흐 길어서 짤릴 때"),
       (id=2,case="글씨에 점  하나가"),
       (id=3,case="안짤리는 넘")]
@test Pretty.table(nts) == """
|   id | case              |
| ---- | ----------------- |
|    1 | 글씨가 넘흐 길... |
|    2 | 글씨에 점  하나가 |
|    3 | 안짤리는 넘       |
3 rows."""

end # module test_octo_pretty
