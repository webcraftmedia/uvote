         
    <div class="panel-group row" id="acc_1">
        <div class="panel panel-default panel-info">
            <div class="panel-heading">
                <h4 class="panel-title">
                    ${urVote_title}
                </h4>
            </div>            
            <div class="panel-body" id="acc_1_body">
                <div class="col-md-12">
                    ${urvote_body_text}
                </div>
            </div>            
        </div>
    </div>
    <div class="panel-group row" id="acc_2" style="padding-top: 30px;">
        <div class="panel panel-default panel-success">
            <div class="panel-heading" data-toggle="collapse" data-parent="#acc_2" href="#acc_2_body">
                <h4 class="panel-title">
                    <span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;Deine Daten
                </h4>
            </div>
            <div id="acc_2_body" class="row panel-body panel-collapse collapse">
            <div class="row">
                <div class="col-md-6">
                    ${basic_stats}
                </div>

                <div class="col-md-6">
                    <div>${user_temp_votes}</div>
                    <br>
                    <div>${user_overall_votes}</div>
                </div>
            </div>
            </div>
        </div>
    </div>
    <div class="panel-group row" id="acc_4" style="padding-top: 10px;">
        <div class="panel panel-default panel-warning">
            <div class="panel-heading" data-toggle="collapse" data-parent="#acc_4" href="#acc_4_body">
                <h4 class="panel-title">
                    <span class="glyphicon glyphicon-th-large"></span>&nbsp;&nbsp;&nbsp;Bilanz: Fraktionen
                </h4>
            </div>
            <div id="acc_4_body" class="row panel-body panel-collapse collapse">
                <div class="col-md-6">
                    <br>
                    <br>
                    Gesamtübereinstimmung mit den Fraktionen im Bundestag<br>
                    <font size="1">auf %Angabe clicken für Details</font>
                    <br>
                    <br>
                    ${choices_user_ID}
                </div>
                <div class="col-md-6">
                    <div id="donut_user_to_party_overall" class="row" style="padding: 0; margin: 0;"></div>
                    
                
                </div>   
            </div>
        </div>
    </div>
    <div class="panel-group row" id="acc_5" style="padding-top: 10px;">
        <div class="panel panel-default panel-warning">
            <div class="panel-heading" data-toggle="collapse" data-parent="#acc_5" href="#acc_5_body">
                <h4 class="panel-title">
                    <span class="glyphicon glyphicon-th"></span>&nbsp;&nbsp;&nbsp;Bilanz: Fraktionen nach Stimmverhalten
                </h4>
            </div>
            <div id="acc_5_body" class="row panel-collapse collapse panel-body">
                    <div class="col-md-4">
                        <img class="img-responsive" src="${frontend_logos}icon_urn_pro.png"/>
                        <h5>Übereinstimmung der pro Stimmen</h5>
                        ${choices_user_ID_per_party_pro}
                    </div>
                    
                    <div class="col-md-4">
                        <img class="img-responsive" src="${frontend_logos}icon_urn_con.png"/>
                        <h5>Übereinstimmung der contra Stimmen</h5>
                        ${choices_user_ID_per_party_con}
                    </div>
                    
                    <div class="col-md-4">
                        <img class="img-responsive" src="${frontend_logos}icon_urn_ent.png"/>
                        <h5>Übereinstimmung der Enthaltungen</h5>
                        ${choices_user_ID_per_party_ent}
                    </div>
            </div>
        </div>
    </div>
    <div class="panel-group row" id="acc_7" style="padding-top: 10px;">
        <div class="panel panel-default panel-warning">
            <div class="panel-heading" data-toggle="collapse" data-parent="#acc_7" href="#acc_7_body">
                <h4 class="panel-title">
                    <span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;&nbsp;Bilanz: Bundestag
                </h4>
            </div>
            <div id="acc_7_body" class="row panel-body panel-collapse collapse">
                <div class="col-md-6">
                    Bundestag gesamt
                    ${choices_bt_to_user}
                </div>
                <div class="col-md-6">
                    Übereinstimmung mit dem Bundestag
                        <img class="img-responsive" src="${frontend_logos}icon_bt.png"/>    
                        ${choices_user_ID_per_bt_pro}
                        ${choices_user_ID_per_bt_con}
                        ${choices_user_ID_per_bt_ent}              
                </div>   
            </div>
        </div>
    </div>
    
    
    <div class="row panel-group" id="acc_6" style="padding-top: 10px;">               
        <div class="panel panel-default panel-danger">
            <div class="panel-heading" data-toggle="collapse" data-parent="#acc_6" href="#acc_6_body">
                <h4 class="panel-title">
                    <span class="glyphicon glyphicon-random"></span>&nbsp;&nbsp;&nbsp;Entwicklung: Fraktionen
                </h4>
            </div>
            <div id="acc_6_body" class="panel-body panel-collapse collapse">
                <div class="row">
                         <img class="img-responsive" src="${frontend_logos}icon_cdu.png"/>
                </div>
                <div id="graph_user_to_party_overall_cdu" class="row"></div>
                <hr>
                <div class="row">
                         <img class="img-responsive" src="${frontend_logos}icon_csu.png"/>
                </div>
                <div id="graph_user_to_party_overall_csu" class="row"></div>
                <hr>
                <div class="row">
                         <img class="img-responsive" src="${frontend_logos}icon_spd.png"/>
                </div>
                <div id="graph_user_to_party_overall_spd" class="row"></div>
                <hr>
                <div class="row">
                         <img class="img-responsive" src="${frontend_logos}icon_gruene.png"/>
                </div>
                <div id="graph_user_to_party_overall_gruene" class="row"></div>
                <hr>
                <div class="row">
                         <img class="img-responsive" src="${frontend_logos}icon_linke.png"/>
                </div>
                <div id="graph_user_to_party_overall_linke" class="row"></div>
            </div>   
        </div>
    </div>
    <div class="row panel-group" id="acc_3" style="padding-top: 10px;">               
        <div class="panel panel-default panel-primary">
            <div class="panel-heading" data-toggle="collapse" data-parent="#acc_3" href="#acc_3_body">
                <h4 class="panel-title">
                    <span class="glyphicon glyphicon-globe"></span>&nbsp;&nbsp;&nbsp;community Statistik
                </h4>
            </div>
            <div id="acc_3_body" class="panel-body panel-collapse collapse">
                <div class="col-md-6">
                    <h5>Entscheidungsverhalten der uVote Community</h5>
                    <span style="">
                    ${votes_all}
                    </span>
                    <span style="">  Wie oft die uVote Community 
                        <br>  insgesamt Dafür, Dagegen oder 
                        <br>  Enthaltung gestimmt hat.</span>
                </div>
                <div class="col-md-6">
                    <h5>Entscheidungsverhalten des Bundestags</h5>
                    <span style="">
                    ${votes_all_bt}
                    </span>
                    <span style="">  Wie oft der Bundestag 
                        <br>  Dafür, Dagegen oder 
                        <br>  Enthaltung gestimmt hat.</span>
                </div>    
            </div>   
        </div>
    </div>
    

<!--<div id="graph_bt_user_overall" class="row"></div>

<script type="text/javascript" language="JavaScript">load_visualisation_urvote('graph_bt_user_overall',84600);</script>-->
<script type="text/javascript" language="JavaScript">load_visualisation_user_to_party_overall('graph_user_to_party_overall_cdu', 'cdu', 84600);</script>
<script type="text/javascript" language="JavaScript">load_visualisation_user_to_party_overall('graph_user_to_party_overall_csu', 'csu', 84600);</script>
<script type="text/javascript" language="JavaScript">load_visualisation_user_to_party_overall('graph_user_to_party_overall_spd', 'spd', 84600);</script>
<script type="text/javascript" language="JavaScript">load_visualisation_user_to_party_overall('graph_user_to_party_overall_gruene', 'gruene', 84600);</script>
<script type="text/javascript" language="JavaScript">load_visualisation_user_to_party_overall('graph_user_to_party_overall_linke', 'linke', 84600);</script>
<script type="text/javascript" language="JavaScript">load_visualisation_user_to_parties_overall('donut_user_to_party_overall', 84600);</script>
                          

        
       