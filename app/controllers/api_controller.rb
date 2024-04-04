class ApiController < ApplicationController
    def api_documentation
        render file: 'api-documentation.html', layout: false
    end
end