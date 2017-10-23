ApiPagination.configure do |config|
  config.paginator = :will_paginate
  config.page_param = :page
  config.per_page_param = :pageSize
end
