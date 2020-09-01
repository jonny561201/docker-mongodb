db.createUser(
    {
        user: "testUser",
        pwd: "Password123!",
        roles: [
            {
                role: "readWrite",
                db: "MY_DOCKER_DB"
            }
        ]
    }
);