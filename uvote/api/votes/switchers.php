<?php
class switchers{
    public static function get_party_per_poll($choice){
        switch($choice){
            case 1:
                return 'PRO';
            case 2:
                return 'CON';
            case 3:
                return 'ENT';
            default:
                return 'NONE';
        }           
    }
    
    public static function tablerow_class($choice){
        switch($choice){
            case 1:
                return 'pro';
            case 2:
                return 'con';
            case 3:
                return 'ent';
            default:
                return 'open';
        }        
    }
    
    public static function badge_class($choice){
        switch($choice){
            case 1:
                return 'badge-success';
            case 2:
                return 'badge-danger';
            case 3:
                return 'badge-info';
            default:
                return '';
        }
    }
    public static function panel_class($choice){
        switch($choice){
            case 1:
                return 'panel-success';
            case 2:
                return 'panel-danger';
            case 3:
                return 'panel-info';
            default:
                return 'panel-default';
        }
    }
    public static function bar_class($choice){
        switch($choice){
                case 1:
                    return 'progress-bar-success';
                case 2:
                    return 'progress-bar-danger';
                case 3:
                    return 'progress-bar-info';
                case 0:
                    return 'progress-bar';
            }
    }
}
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
