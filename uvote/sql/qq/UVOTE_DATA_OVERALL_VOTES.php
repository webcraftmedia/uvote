<?php
namespace SQL;

class UVOTE_DATA_OVERALL_VOTES extends \SYSTEM\DB\QP {
    public static function get_class(){return \get_class();}
    public static function mysql(){return
'SELECT SUM(CASE WHEN uvote_data.user_ID = ? THEN 1 ELSE 0 END) as voted,
        SUM(CASE WHEN uvote_data.user_ID = ? THEN 0 ELSE 1 END) AS not_voted 
FROM uvote_data RIGHT JOIN uvote_votes ON ( uvote_data.poll_ID  = uvote_votes.ID AND uvote_data.user_ID = ?)
WHERE time_start > FROM_UNIXTIME(?);'
;}}
