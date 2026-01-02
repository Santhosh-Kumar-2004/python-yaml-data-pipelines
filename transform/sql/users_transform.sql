-- Created the select query to make the email lower and not null
SELECT
    user_id,
    LOWER(email) AS email,
    full_name,
    created_at
FROM raw.users
WHERE email IS NOT NULL;

