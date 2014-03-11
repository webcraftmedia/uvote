<table style="margin-bottom: 5px; width: 95%; height: 100px; border: solid lightgray 1px; background: beige;">
    <tr> 
        <td style="padding: 5px; padding-top: 0;">            
            <h5>${title}</h5>
            <img src="${frontend_logos}icon_urn_${vote_class}.png"/>
            <a class="btn btn-primary btn-small btn_vote" style="" poll_ID="${ID}">${full_vote_btn}</a>
        </td>
        <td class="${bt_vote_class}" style="width: 80px; margin-top: 5px; border-left: 1px solid lightgray; padding: 2px;">            
            <img src="${frontend_logos}icon_bt.png" width="80"/>
            ${bt}            
        </td>
        <td class="${uv_vote_class}" style="width: 60px; height: 100%; border-left: 1px solid lightgray; padding: 2px;">          
            <img src="${frontend_logos}icon_urn.png" width="20"/>
            <span style="float: right"><font size="2">uVote</font></span>
            <br/>
            ${uv}
            <span class="badge" style="">${uv_count}</span>

        </td>
        <td style="margin: 0; padding: 0; width: 3px;" >
            <table class="poll_time" time="${time_end}" style="width: 100%; height: 100%; margin: 0; padding: 0;">
                <tr id="time_done" style="height: ${time_done}%; background: white; margin: 0; padding: 0;"><td style="width: 1px; margin: 0; padding: 0;"></td></tr>
                <tr id="time_left" style="height: ${time_left}%; background: blue; margin: 0; padding: 0;"><td style="width: 1px; margin: 0; padding: 0;"></td></tr>
            </table>
        </td>
    </tr>
</table>
