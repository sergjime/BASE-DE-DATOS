SELECT DISTINCT sID, sName FROM (SELECT sID FROM apply WHERE major='CS' UNION SELECT sID FROM apply WHERE major='EE') AS la_union NATURAL JOIN student WHERE sID NOT IN (SELECT sID FROM apply WHERE major='CS' AND sID IN (SELECT sID FROM apply WHERE major='EE'));
-- Unión excepto la Intersección

SELECT sID FROM apply WHERE major='CS' UNION SELECT sID FROM apply WHERE major='EE'; -- Unión de dos tablas

SELECT sID FROM apply WHERE major='CS' AND sID IN (SELECT sID FROM apply WHERE major='EE'); -- Intersección de dos tablas