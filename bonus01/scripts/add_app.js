db.createUser({
	"user": "app",
	"pwd": "app",
	"roles": [{
		"db": "app",
		"role": "readWrite"
	}]
});
db.shutdownServer({});
