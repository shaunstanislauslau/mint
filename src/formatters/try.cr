module Mint
  class Formatter
    def format(node : Ast::Try) : String
      statements =
        list node.statements

      catches =
        format node.catches, " "

      "try {\n#{statements.indent}\n} #{catches}".strip
    end
  end
end
