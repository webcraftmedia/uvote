<?php
class user_main_uVote extends SYSTEM\PAGE\Page {    
   
    private function votes_all(){
        $votes = votes::get_all_votes();
        $result = '';
        foreach($votes as $vote){
            switch($vote['choice']){
                case 1:
                    $vote['choice'] = 'PRO';
                    break;
                case 2:
                    $vote['choice'] = 'CONTRA';
                    break;
                case 3:
                    $vote['choice'] = 'ENTH';
                    break;
            }
            //$vote['count'];
            //$vote['choice'];
            $result .= \SYSTEM\PAGE\replace::replaceFile(SYSTEM\SERVERPATH(new PPAGE(),'user_main_uVote/votecountchoice.tpl'),$vote);
        }
        return $result;        
    } 
    
    public function html(){                 
        $vars = array();
        $vars['votes_all'] = $this->votes_all();
        $vars = array_merge($vars,  \SYSTEM\locale::getStrings(DBD\locale_string::VALUE_CATEGORY_MAINPAGE));
        $vars = array_merge($vars,  \SYSTEM\locale::getStrings(150));
        return \SYSTEM\PAGE\replace::replaceFile(SYSTEM\SERVERPATH(new PPAGE(),'user_main_uVote/uVote.tpl'),$vars);
    }
  
}