import norm/postgres, macros
import userschema, feedback, package
import unicode

template `~`(arg: untyped)  =
  let file = ($arg & ".nim").toLower
  let source = readFile(file)
  echo $source

~ UserSchema

#[dbConn("localhost", "ade", "thiskeys7x8c6h9isverylong", "mule"):
#  ~ UserSchema
#  ~ Feedback
#  ~ Package

    
#when isMainModule:
#  withDb:
#    createTables()]#
