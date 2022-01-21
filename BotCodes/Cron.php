<?php
require_once 'config.php';
$db = Database::getInstance();
$tg = Telegram::getInstance();

$botVersion = 3;
$postId = 17;
$age = time() - _TimeStamp;
$days = floor($age / 86400);
$hours = floor(($age % 86400) / 3600);
$userCount = $db->getTableCount("_user_data");
//$entranceCount = $db->getTableCount("_user_entrance");

$post = "#RoBot Name: <b>Age Birth</b>" . "\n";
$post .= "Username: @AgeBirthBot" . "\n";
$post .= "Member(s): <code>" . number_format($userCount) . "</code>\n";
$post .= "Version: <code>" . $botVersion . "</code>\n \n";
$post .= "Created: <code>" . number_format($days) . "</code> day(s), <code>" . $hours . "</code> hour(s) ago.\n";
$post .= "- Time: <code>" . date("H:i:s", _TimeStamp) . "</code> UTC\n";
$post .= "- Date: <code>" . date("Y-m-d", _TimeStamp) . "</code>\n \n";
$post .= "<b>Abilities: </b>\n";
$post .= "v1: Users can see the number of seconds, hours, days, weeks, months and years of your life." . "\n";
$post .= "v2: Users can enter hour, minute and second." . "\n";
$post .= "v3: Users can share their dates with their friends." . "\n";
$post .= "\n";
$post .= "<i>This post is updated automatically every hour.</i>\n";
$post .= "Channel: @ZarchiProjects";

$tg->editMessage(_PROJECTS_CHANNEL, $postId, $post);
