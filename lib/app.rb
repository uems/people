module People
  class App < Sinatra::Base
    register Sinatra::RespondWith
    set :root, File.join(File.dirname(__FILE__), '..')
    set :vendor, 'application/vnd.uems.people'

    get '/' do
      content = { people: [
        { rel: 'person',        href: '/person',        type: vnd_content_type(:person) },
        { rel: 'group',         href: '/group',         type: vnd_content_type(:person) },
        { rel: 'search person', href: '/search/person', type: vnd_content_type('person.search_results') },
        { rel: 'search group',  href: '/search/group',  type: vnd_content_type('group.search_results') },
      ] }

      # etag Digest::MD5.hexdigest content.to_s

      respond_to do |f|
        f.json { json_response content.to_json }
      end
    end

    private

    def json_response(content)
      content_type "#{settings.vendor}+json", charset: 'utf-8'
      content.to_json
    end

    def vnd_content_type(type=nil)
      "#{settings.vendor}.#{type}+json"
    end

  end
end
