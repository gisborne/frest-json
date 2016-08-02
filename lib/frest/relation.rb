module Frest
  module Relation
    def create_relation(
      name:,
      fields: [],
      keys: [:id]
    )

      sql = %{
        CREATE TABLE
          #{name} (
            #{fields.map{|k, v| field_create_string(name: k, type: v, keys: keys)} * ",\n"},
            PRIMARY KEY(#{keys * ', '})
          )
          WITHOUT ROWID
      }

      result = execute(sql: sql)
      result
    end

    def insert_relation(
      name:,
      fields: [],
      values: []
    )

    end

    def find_relation(
      name:,
      where: {},
      fields: []
    )

    end

    def update_relation(
      name:,
      where: {},
      values: {}
    )

    end

    def delete_relation(
      name:,
      where: {}
    )

    end



    private

    def field_create_string(
      name:,
      type:,
      keys:
    )
      "#{name} #{type}#{keys.include?(name) ? ' NOT NULL' : ''}"
    end
  end
end