require 'sinatra/json'

error 400 do
  json error: { code: 400, message: 'Bad Request' }
end

error 401 do
  json error: { code: 401, message: 'Unauthorized' }
end
