-- 코드를 작성해주세요
SELECT COUNT(FISH_NAME_INFO.FISH_NAME) AS FISH_COUNT
FROM FISH_NAME_INFO
JOIN FISH_INFO ON FISH_INFO.FISH_TYPE = FISH_NAME_INFO.FISH_TYPE
WHERE FISH_NAME_INFO.FISH_NAME = 'BASS' OR FISH_NAME_INFO.FISH_NAME = 'SNAPPER'