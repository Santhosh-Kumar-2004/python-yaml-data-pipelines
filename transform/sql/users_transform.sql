-- Created the select query to make the email lower and not null
SELECT
    user_id,
    LOWER(email) AS email,
    full_name,
    created_at
FROM raw.users
WHERE email IS NOT NULL;

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
