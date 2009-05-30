require 'ghost'

get '/' do
  @hosts = hosts
  haml :list
end

def hosts
  Host.list.map { |h| h.host if h.ip == '127.0.0.1' }.compact
end