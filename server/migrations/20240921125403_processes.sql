CREATE TYPE process_status AS ENUM ('PENDING', 'DOWNLOADING', 'DOWNLOADED', 'CONVERTING', 'CONVERTED', 'DONE');

CREATE TABLE processes (
    id UUID PRIMARY KEY,
    name TEXT NOT NULL,
    youtube_url TEXT NOT NULL,
    status process_status NOT NULL DEFAULT 'PENDING',
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
