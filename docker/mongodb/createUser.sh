echo "================EXECUTING SCRIPT==============="
echo $MONGO_USERNAME
echo $MONGO_PASSWORD

if [[ $MONGO_USERNAME ]] && [[ $MONGO_PASSWORD ]]; then
  echo "---------Running script to Create User----------"
    "${mongo[@]}" "$MONGO_INITDB_DATABASE" <<-EOJS
      db.createUser({
          user: $(_js_escape "$MONGO_USERNAME"),
          pwd: $(_js_escape "$MONGO_PASSWORD"),
          roles: [ "readWrite", "dbAdmin" ]
      })
    EOJS
fi