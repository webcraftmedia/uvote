<?php
class lists{

    public static function generate_votelist($filter){        
        $result = array('','');
        if(!$filter){
            $votes = \SQL\UVOTE_GENERATE_VOTELIST::QA(array(1));
        }
        else{
            $votes = \SQL\UVOTE_GENERATE_VOTELIST_FILTERED::QA(array(1, $filter));   
        }
        foreach($votes as $vote){
            $time_remain = strtotime($vote['time_end'])-  microtime(true);
            $time_span = strtotime($vote['time_end']) - strtotime($vote['time_start']);
            $vote_count = \SQL\UVOTE_DATA_USER_COUNT_CHOICE_PER_POLL::Q1(array($vote['ID']));
            $vote['votecount'] = $vote_count['count'];
            $vote['tags'] = self::get_all_tags_of_vote($vote['ID']);
            $vote['time_left'] = round($time_remain/($time_span+1)*100,0);
            $vote['time_done'] = 100-$vote['time_left'];
            $vote['full_vote_btn'] = $time_remain > 0 ? 'Abstimmen' : 'Ansehen';            
            $vote['uv'] = $vote['bt'] = '';
            $quick = new DateTime($vote['quick']);
            $vote['quick'] = date_format($quick, 'd.m.Y');
            $vote['uv_count'] = $vote_count['count'] > 4 ? $vote_count['count'] : '< 5';
            $user_vote = votes::getUserPollData($vote['ID']);
            $vote['vote_class'] = switchers::tablerow_class($user_vote);
            $vote['frontend_logos'] = './api.php?call=files&cat=frontend_logos&id=';
            if($time_remain > 0){
                $vote['statusmarker'] = 'aktuell';
                $result[0] .= SYSTEM\PAGE\replace::replaceFile((new PPAGE('user_main_votelist/tpl/vote.tpl'))->SERVERPATH(), $vote);
            } else {
                $vote['statusmarker'] = 'vergangen';
                $result[1] .= SYSTEM\PAGE\replace::replaceFile((new PPAGE('user_main_votelist/tpl/vote.tpl'))->SERVERPATH(), $vote);
            }
        }
        return $result[0].$result[1];
    }
    public static function get_all_tags_of_vote($poll_ID){
        $result = '';
        $vars = \SQL\UVOTE_DATA_USER_TAGS_OF_VOTE::QA(array($poll_ID));
        foreach ($vars as $tag){
            $result .= \SYSTEM\PAGE\replace::replaceFile((new PPAGE('user_main_votelist/tpl/tag.tpl'))->SERVERPATH(),$tag);
        }
        return $result;
    }
    
    public static function text_search($text){
        $result = array('','');
        $votes = \SQL\UVOTE_DATA_TEXT_SEARCH::QA(array($text));
        foreach($votes as $vote){
            $time_remain = strtotime($vote['time_end'])-  microtime(true);
            $time_span = strtotime($vote['time_end']) - strtotime($vote['time_start']);
            $vote_count = \SQL\UVOTE_DATA_USER_COUNT_CHOICE_PER_POLL::Q1(array($vote['ID']));
            $vote['votecount'] = $vote_count['count'];
            $vote['tags'] = self::get_all_tags_of_vote($vote['ID']);
            $vote['time_left'] = round($time_remain/($time_span+1)*100,0);
            $vote['time_done'] = 100-$vote['time_left'];
            $vote['full_vote_btn'] = $time_remain > 0 ? 'Abstimmen' : 'Ansehen';            
            $vote['uv'] = $vote['bt'] = '';            
            $vote['uv_count'] = $vote_count['count'] > 4 ? $vote_count['count'] : '< 5';
            $user_vote = votes::getUserPollData($vote['ID']);
            $vote['vote_class'] = switchers::tablerow_class($user_vote);
            $vote['frontend_logos'] = './api.php?call=files&cat=frontend_logos&id=';
            if($time_remain > 0){
                $vote['statusmarker'] = 'aktuell';
                $result[0] .= SYSTEM\PAGE\replace::replaceFile((new PPAGE('user_main_votelist/tpl/vote.tpl'))->SERVERPATH(), $vote);
            } else {
                $vote['statusmarker'] = 'vergangen';
                $result[1] .= SYSTEM\PAGE\replace::replaceFile((new PPAGE('user_main_votelist/tpl/vote.tpl'))->SERVERPATH(), $vote);
            }
        }
        return $result[0].$result[1];
    }
}