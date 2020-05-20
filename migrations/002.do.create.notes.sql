CREATE TABLE notes (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    date_modified TIMESTAMPTZ NOT NULL DEFAULT now(),
    folder_id INTEGER 
        REFERENCES folders(id) ON DELETE CASCADE NOT NULL
);

-- ALTER TABLE folders 
--   ADD COLUMN    
--     notes_id INTEGER REFERENCES notes(id)
--     ON DELETE SET NULL;