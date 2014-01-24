<img src="${frontend_logos}logo2.png"/>
<br />
<br />
<form class="textbox" id="register_user_form">
    <div class="control-group" id="register_username_control_group">
        <table id="userRegisterTable" class="table table-striped">
           <tbody>
                <tr>
                   <th style="width: 200px;">${user_name_register}</th>
                   <td>
                       <div class="control-group controls">
                            <input  type="text"
                                    size="30"
                                    style="margin-bottom: 15px; float: left;"
                                    id="register_username"
                                    placeholder="${ari_name}"
                                    minlength="3" data-validation-minlength-message="${register_user_name_too_short}"
                                    required data-validation-required-message="${register_user_name_required}"/>
                            <br/>
                            <div id="register-help-block-username" class="help-block" style="float: left; margin-top: 3px;"></div>
                        </div>
                   </td>
                </tr>
                <tr>
                   <th>${user_email_register}</th>
                   <td>
                        <div class="control-group controls">
                            <input  type="email"
                                    size="30"
                                    style="margin-bottom: 15px; float: left;"
                                    id="register_email"
                                    placeholder="${ari_mail}"
                                    data-validation-email-message="${mail_format_wrong}"
                                    required data-validation-required-message="${register_email_required}"/>
                            <br/>
                            <div id="register-help-block-email" class="help-block" style="float: left; margin-top: 3px;"></div>
                        </div>
                   </td>
                </tr>
                <tr>
                   <th>${user_password_register}</th>
                   <td>
                        <div class="control-group" id="change_user_password">
                              <div class="control-group controls" style="clear: both">
                                  <input  type="password"
                                          size="30"
                                          style="margin-bottom: 15px; float: left;"
                                          id="user_register_password1"
                                          name="user_register_password1"
                                          placeholder="${ari_pass}"
                                          minlength="5" data-validation-minlength-message="${register_password_too_short}"
                                          required data-validation-required-message="${register_password_required}"/>
                                  <br/>
                                  <div class="help-block" style="float: left; margin-top: 3px;"></div>
                              </div>
                              <div class="control-group controls" style="clear: both">
                                  <input  type="password"
                                          size="30"
                                          style="margin-bottom: 15px; float: left;"
                                          id="user_register_password2"
                                          name="user_register_password2"
                                          placeholder="${ari_pass}"
                                          data-validation-matches-match="user_register_password1"
                                          data-validation-matches-message="${register_password_dont_match}"/>
                                  <br/>
                                  <div class="help-block" style="float: left; margin-top: 3px;"></div>
                              </div>
                         </div>
                   </td>
                </tr>
                <tr>
                   <th>${locale}</th>
                   <td>
                       <div id="change_user_locale">
                           <select size="1" id="register_locale_select">
                                <option value="deDE">deDE</option>
                                <option value="enUS">enUS</option>
                            </select>
                       </div>
                   </td>
                </tr>
           </tbody>
        </table>
        <button class="btn btn-primary" type="submit"><i class="icon-ok icon-white"></i> ${register}</button>
    </div>
</form>