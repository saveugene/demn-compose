mongo -- "$MONGO_INITDB_DATABASE" <<EOF
    db.auth('$MONGO_INITDB_ROOT_USERNAME', '$MONGO_INITDB_ROOT_PASSWORD');

    db.getSiblingDB('$MONGO_INITDB_USER_DATABASE').createUser(
        {
            user: '$MONGO_INITDB_USERNAME', 
            pwd: '$MONGO_INITDB_PASSWORD', 
            roles: ["readWrite"]
        }
    );
EOF