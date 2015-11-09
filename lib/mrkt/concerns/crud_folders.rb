module Mrkt
  module CrudFolders
    def get_folder_by_name(name)
      get("/rest/asset/v1/folder/byName.json?name=#{name}")
    end
  end
end
