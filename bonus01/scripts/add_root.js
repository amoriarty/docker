db.createUser({
	"user": "root",
	"pwd": "root",
	"roles": ["root"]
});
db.shutdownServer();
