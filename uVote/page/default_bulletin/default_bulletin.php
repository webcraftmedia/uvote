<?php
class default_bulletin extends SYSTEM\PAGE\Page {
    private $poll_ID = NULL;
    public function __construct($poll_ID) {
        $this->poll_ID=$poll_ID;
        
    }


    
    private function bars_user(){
        $bars = votes::get_barsperusers($this->poll_ID,false);
        $bars['vote_yes_perc'] = round($bars['yes_perc']*100,0);
        $bars['vote_no_perc'] = round($bars['no_perc']*100,0);
        $bars['vote_ent_perc'] = round($bars['ent_perc']*100,0);
        $bars['title'] = 'Gemessen auf uVote';
        return SYSTEM\PAGE\replace::replaceFile(SYSTEM\SERVERPATH(new PPAGE(),'default_bulletin/bars_user.tpl'),$bars);
    }
    
    private function bars_party(){
        $partyvotes = votes::get_barsperparty($this->poll_ID);
        
        $pbpp = "";
        foreach($partyvotes as $vote){
            $vote['party_yes'] = round($vote['votes_pro']/$vote['total']*100,0);
            $vote['party_no'] = round($vote['votes_contra']/$vote['total']*100,0);
            $vote['party_ent'] = round(($vote['nr_attending'] - $vote['votes_pro'] - $vote['votes_contra'])/$vote['total']*100,0);
            $pbpp .= SYSTEM\PAGE\replace::replaceFile(SYSTEM\SERVERPATH(new PPAGE(),'default_bulletin/table_parties.tpl'), $vote);
        }
        
        return $pbpp;
    }
    
    private function bars_bt(){
        $vars = votes::get_bar_bt_per_poll($this->poll_ID);
        if (!$vars['bt_total']){
            return 'no data yet';}
        $vars['bt_ent'] = round(($vars['bt_attending'] - $vars['bt_pro'] - $vars['bt_con'])/$vars['bt_total']*100,0);
        $vars['bt_pro'] = round($vars['bt_pro']/$vars['bt_total']*100,0);
        $vars['bt_con'] = round($vars['bt_con']/$vars['bt_total']*100,0);           
        return SYSTEM\PAGE\replace::replaceFile(SYSTEM\SERVERPATH(new PPAGE(),'default_bulletin/table_bt.tpl'), $vars);
    }
        
    private function js(){        
        return  '<script src="'.SYSTEM\WEBPATH(new PPAGE(),'default_bulletin/js/vote.js').'"></script>';}
    private function css(){  
        return '<link href="'.SYSTEM\WEBPATH(new PPAGE(),'default_page\css\default_page.css').'" rel="stylesheet">';} 

    public function html(){
        $poll_expired = DBD\UVOTE_POLL_EXPIRED::Q1(array($this->poll_ID));
        $poll_data = array();
        $poll_data[] = DBD\UVOTE_DATA_CHOICE_OVERALL::Q1(array(1));
        $poll_data[] = DBD\UVOTE_DATA_CHOICE_OVERALL::Q1(array(2));
        $poll_data[] = DBD\UVOTE_DATA_CHOICE_OVERALL::Q1(array(3));
        $vars = array();
        $vars['bars_party'] = $poll_expired ? '' : $this->bars_party();
        $vars['bars_user'] =  $this->bars_user();
        $vars['bars_bt'] = $this->bars_bt();
        $vars['js'] = $this->js();
        $vars['css'] = $this->css();
        $vars['frontend_logos'] = \SYSTEM\CONFIG\config::get(\SYSTEM\CONFIG\config_ids::SYS_CONFIG_PATH_BASEURL).'api.php?call=img&cat=frontend_logos&id=';
        $vars ['vote_buttons'] =    $poll_expired ? 
                                    '<h4>Stimme hier ab</h4>
                                     <a class="btn btn-success btn-default btnvote_yes"
                                        style="width: 70px"                                     
                                        poll_ID="${poll_ID}"><font 
                                        size="3">Pro</font></a>
                                     <a class="btn btn-danger btn-default btnvote_no" 
                                        style="width: 70px" 
                                        href="#" 
                                        poll_ID="${poll_ID}"><font 
                                        size="3">Contra</font></a>
                                     <a class="btn btn-info btn-default btnvote_off" 
                                        style="width: 70px" 
                                        href="#" 
                                        poll_ID="${poll_ID}"><font 
                                        size="3">Enthaltung</font></a>' :
                                    print_r($poll_data,TRUE);
        $vars['poll_ID'] =  $this->poll_ID;
        $vars = array_merge($vars,votes::get_voteinfo($this->poll_ID));       
        return SYSTEM\PAGE\replace::replaceFile(SYSTEM\SERVERPATH(new PPAGE(),'default_bulletin/bulletin.tpl'),$vars);
    }
  
}