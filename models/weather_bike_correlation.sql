WITH CTE AS (
    SELECT
    t.*,
    w.*
    FROM {{ ref('trip_fact') }} t
    LEFT JOIN {{ ref('daily_weather_dimension') }} w
    ON t.TRIP_DATE = w.DATE_WEATHER    
)

SELECT *
FROM CTE