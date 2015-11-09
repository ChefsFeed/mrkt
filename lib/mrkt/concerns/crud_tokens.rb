module Mrkt
  module CrudTokens
    def create_token_by_folder_id(folder_id, folder_type, type, name, value)
      post("/rest/asset/v1/folder/#{folder_id}/tokens.json") do |req|
        params = {
            folderType: folder_type, #type of folder, Folder or Program
            type: type, # type of token to create
            name: name, # name of token
            value: value
        }

        # use URL encoded form params here, json doesn't work?
        req.body = params
        # json_payload(req, params)
      end
    end
  end
end
