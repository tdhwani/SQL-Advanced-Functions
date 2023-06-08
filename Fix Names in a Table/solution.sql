select 
  user_id, 
  concat(
    UPPER(
      LEFT(name, 1)
    ), 
    LOWER(
      RIGHT(
        name, 
        length(name)-1
      )
    )
  ) as name 
from 
  Users 
order by 
  user_id;
