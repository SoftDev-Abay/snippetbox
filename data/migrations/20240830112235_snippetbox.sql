-- +goose Up
-- +goose StatementBegin

CREATE TABLE snippets (
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
title VARCHAR(100) NOT NULL,
content TEXT NOT NULL,
created DATETIME NOT NULL,
expires DATETIME NOT NULL
);

CREATE INDEX idx_snippets_created ON snippets(created);



INSERT INTO snippets (title, content, created, expires) VALUES (
'An old silent pond',
'An old silent pond...\nA frog jumps into the pond,\nsplash! Silence again.\n\n– Matsuo Bashō',
'2008-11-11',
 	'2009-12-12'
);

INSERT INTO snippets (title, content, created, expires) VALUES (
'A new silent pond',
'A new silent pond...\nA frog jumps into the pond,\nsplash! Silence again.\n\n– Matsuo Bashō',
'2010-12-11',
 	'2012-10-11'
);

INSERT INTO snippets (title, content, created, expires) VALUES (
'A fresh silent pond',
'A fresh silent pond...\nA frog jumps into the pond,\nsplash! Silence again.\n\n– Matsuo Bashō',
'2015-11-11',
 	'2016-12-12'
);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE snippets
-- +goose StatementEnd



-- Create a `snippets` table.
