require 'ghost'

get '/' do
  @hosts = hosts_by_initial
  haml :list
end

get '/style.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :style
end

def hosts
  Host.list.map { |h| h.host if h.ip == '127.0.0.1' }.compact
end

def hosts_by_initial
  hosts.inject(Hash.new { |h,k| h[k] = [] }) do |initials, host|
    initials[host[0,1]] << host
    initials
  end.to_a.sort_by { |el| el.first }
end