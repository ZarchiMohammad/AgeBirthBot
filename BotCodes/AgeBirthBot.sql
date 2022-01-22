CREATE TABLE `_user_age` (
  `_id` int(11) NOT NULL,
  `_chatId` char(64) NOT NULL,
  `_age` bigint(20) NOT NULL
);

CREATE TABLE `_user_data` (
  `_id` int(11) NOT NULL,
  `_sign_date` char(64) NOT NULL,
  `_chatId` bigint(20) NOT NULL,
  `_caller` char(64) NOT NULL,
  `_level` char(255) NOT NULL,
  `_lan` char(3) NOT NULL,
  `_active` int(11) NOT NULL
);

CREATE TABLE `_user_dates` (
  `_row` int(11) NOT NULL,
  `_id` char(255) NOT NULL,
  `_chatId` char(128) NOT NULL,
  `_date` char(32) NOT NULL,
  `_name` text NOT NULL,
  `_desc` text NOT NULL,
  `_view` int(11) NOT NULL,
  `_deleted` tinyint(1) NOT NULL
);

CREATE TABLE `_user_entrance` (
  `_id` int(11) NOT NULL,
  `_chatId` char(64) NOT NULL,
  `_timestamp` char(64) NOT NULL,
  `_text` text NOT NULL
);

ALTER TABLE `_user_age`
  ADD PRIMARY KEY (`_id`);

ALTER TABLE `_user_data`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_chatId` (`_chatId`);

ALTER TABLE `_user_dates`
  ADD PRIMARY KEY (`_row`);

ALTER TABLE `_user_entrance`
  ADD PRIMARY KEY (`_id`);

ALTER TABLE `_user_age`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `_user_data`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `_user_dates`
  MODIFY `_row` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `_user_entrance`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
