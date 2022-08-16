const tables = [
    "users_damo",
    "project",
    "files" 
]

const fields = {
    users_damo:["hid", "user_id", "user_name", "enabled", "email", "password", "user_state_type", "user_type", "birth_day", "gender_type", "local_type", "military_service_type", "file_seq", "post_number", "address", "detail_address", "drop_out_date", "create_date", "create_user_id", "modify_date", "record_user_id", "record_ip", "record_date", "password_policy", "mobile_flag", "reg_id", "coordi_appoint_type", "curator_appoint_type", "coordi_type", "curator_type", "mobile_notice_type", "mobile_vibrate_type", "mobile_popup_type", "evaluation_vit", "evaluation_type", "mobile_provide_type", "mobile_number", "mobile_detail_number", "phone_location_type", "phone_number", "phone_detail_number", "user_email_flag", "middle_eval_yn", "m_eval_yn", "c_eval_yn", "d_eval_yn", "d2_eval_yn", "d3_eval_yn", "e_eval_yn", "auth_type", "auth_key", "recommend_name", "recommend_dept", "recommend_status", "recommend_userid", "email_send_yn", "sleep_yn", "sleep_date"],
    project:['project_seq', 'project_name'],
    files:['file_seq','file_name'] 
}

const tableAuto = document.querySelector("#tableAuto");
tableAuto.addEventListener('click',selectTable);

function selectTable(){
    field.options.length=0;
    table.value = tableAuto.value;
    tableAuto.value = '';
    let arr = fields[table.value];
    for(let i=0;i<arr.length;i++){
        let opt = document.createElement('option');
        opt.value = arr[i];
        opt.text = arr[i];
        field.add(opt)
    }
}

function optAdd(a){
    console.log(a)
}

table.addEventListener('keyup',f_keyup);

function f_keyup(){
    let table = document.querySelector("#table").value;
    for(let i=0; i<tables.length;i++){
        if(tables[i].indexOf(table)>-1){
            tableAuto.value = tables[i];
        }
    }
}






