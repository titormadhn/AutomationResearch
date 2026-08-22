*** Variables ***
#---- CONFIG BROWSER ----#
#Config Path Extension for Capctha
${many_try}    1    #config kondisi login with captcha
${extension_captcha}    C:/WGS-Research/qa-robot-framework/extensions/mpbjkejclgfgadiemmefgebjfooflfhl/3.1.0_0

#---- CONFIG LOCATORS ----#
#Global Locator
${loc_uploadImg}    //input[@placeholder='Photo']
${path_photoImg}    C:/Users/titor/Downloads/robot_trainingImage/dragonball_DaimaGoku.jpg    
${loc_setOriImg}    //span[normalize-space()='Use Original']
${fieldsearch}    //input[@name='query']
${button_create}    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/div[1]/div[2]/div/div/button
${Checkbox_Filter}    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[1]/div/div[1]/label

#Locator in Dashboard
${loc_profileImg}    //*[@id="basic-button"]/span[1]/div/img
${loc_menuProfile}    xpath=//ul[@role='menu']
${loc_yourProfile}    xpath=//li[.='Your Profile']

#Locator in NavBar
${menu_userManagement}    //*[@id="root"]/div/div[1]/div/ul/div[2]
${page_userManagement}    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/div[1]/div[1]/div/h6
${menu_permit}    //*[@id="root"]/div/div[1]/div/ul/div[7]
${page_permit}    //h1[normalize-space()='permit']
${menu_reimburse}    //*[@id="root"]/div/div[1]/div/ul/div[8]
${page_reimburse}    xpath=//div[@aria-label='Table Toolbar']    

#Locator in User Management
${approval_type_list}    //div[@id='mui-component-select-approval_type']
${employment_status_list}    //div[@id='mui-component-select-employment_status']
${row_name_1}    (//tbody//td[2])[1]
${row_approval_type_1}    (//tbody//td[8])[1]
${row_employment_status_1}    (//tbody//td[9])[1]
${fullname_field}    //input[@name='name']
${date_of_birth_field}    //input[@placeholder='dd-mm-yyyy']
${email_field}    //input[@name='email']
${nik_field}    //input[@name='nik']
${phone_field}    //input[@name='phone']
${address_field}    //textarea[@name='address']
${division_field}    (//*[@id="controllable-states-demo"])[1]
${job_title_field}    (//*[@id="controllable-states-demo"])[2]
${supervisor_field}    (//*[@id="free-solo-demo"])[1]
${approval_type_field}    (//div[@id='mui-component-select-approval_type'])[2]
${toast_user_created}    //*[@id="ct-container"]/div[2]/div[2]/div/div/div
${create_button}    //button[@type='submit']
${delete_button_on_row_1}    (//div[@title='Delete'])[1]
${confirm_delete_button}    //button[@id='btnConfirm']
${info_search_result}    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/div[3]/table/tbody/tr/td/div/div