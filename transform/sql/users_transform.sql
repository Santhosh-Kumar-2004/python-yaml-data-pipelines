-- Created the select query to make the email lower and not null
-- EMAIL LOWER TRANSFORMATION
SELECT
    user_id,
    LOWER(email) AS email,
    full_name,
    created_at
FROM raw.users
WHERE email IS NOT NULL;

-- Added the sql query which makes the email into lower and clears duplicates and also orders correctly
-- KEEPS THE LATEST EMAIL DUPLICATE RECORD AT FIRST AND
WITH ranked_users AS (
    SELECT
        user_id,
        LOWER(email) AS email,
        full_name,
        created_at,
        ROW_NUMBER() OVER (
            PARTITION BY LOWER(email)
            ORDER BY created_at DESC
        ) AS rn
    FROM raw.users
    WHERE email IS NOT NULL
)
SELECT
    user_id,
    email,
    full_name,
    created_at
FROM ranked_users
WHERE rn = 1;


WITH clean_users AS (
    SELECT
        user_id,
        LOWER(email) AS email,
        full_name,
        created_at
    FROM raw.users
    WHERE email IS NOT NULL
)
SELECT * FROM clean_users;
