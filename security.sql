-- Active: 1746602073145@@localhost@3306@imdbsportsmovies
-- SQLBook: Code
-- Create read-only role
-- Create read-only role
-- Create users
CREATE USER 'gd52017'@'localhost' IDENTIFIED BY 'football';
CREATE USER 'nn70757'@'localhost' IDENTIFIED BY 'basketball';
CREATE USER 'analyst2'@'localhost' IDENTIFIED BY 'totallyarealanalyst';
CREATE USER 'manager'@'localhost' IDENTIFIED BY 'totallynotafakemanager';

-- Grant FULL access to gd52017 and nn70757
GRANT ALL PRIVILEGES ON imdbsportsmovies.* TO 'gd52017'@'localhost';
GRANT ALL PRIVILEGES ON imdbsportsmovies.* TO 'nn70757'@'localhost';

-- Grant READ-ONLY access to analyst2 and manager
GRANT SELECT ON imdbsportsmovies.* TO 'analyst2'@'localhost';
GRANT SELECT ON imdbsportsmovies.* TO 'manager'@'localhost';

-- Apply changes
FLUSH PRIVILEGES;
