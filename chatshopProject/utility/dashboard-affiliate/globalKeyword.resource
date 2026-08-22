*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Dialogs
Resource    ../../utility/dashboard-affiliate/variable.resource

*** Variables ***
${share_url}    ${EMPTY}
${share_handle}    ${EMPTY}
${affiliate_handle}    ${EMPTY}

*** Keywords ***
#Base URL and Browser
Open Browser Staging Affiliate
    [Arguments]    ${url}=${BASE_URL}    ${browser}=${BROWSER}

    ${options}=    Evaluate
    ...    sys.modules['selenium.webdriver'].ChromeOptions()
    ...    sys, selenium.webdriver

    ${prefs}=    Create Dictionary
    ...    profile.default_content_setting_values.clipboard=1

    Call Method
    ...    ${options}
    ...    add_experimental_option
    ...    prefs
    ...    ${prefs}

    Open Browser
    ...    ${url}
    ...    ${browser}
    ...    options=${options}
    
    ${handles}=    Get Window Handles
    Set Global Variable    ${affiliate_handle}    ${handles}[0]

    Log To Console    Affiliate Handle: ${affiliate_handle}
    
    Maximize Browser Window
    Sleep    1s

Open Chrome With Notification Blocked
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver

    ${prefs}=    Create Dictionary
    ...    profile.default_content_setting_values.notifications=2

    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Call Method    ${options}    add_argument    --disable-notifications

    Create Webdriver    Chrome    options=${options}

# Open Browser Staging Merchant
    # [Arguments]    ${m_url}=${MERCHANT_URL}    
    # Execute Javascript    window.open('${m_url}')
    # @{handles}=    Get Window Handles
    # Switch Window    ${handles}[1]


Open Browser Staging Merchant
    [Arguments]    ${m_url}=${MERCHANT_URL}

    Execute Javascript
    ...    window.open('${m_url}', '_blank')

    Sleep    2s

    @{handles}=    Get Window Handles

    ${cms_handle}=    Set Variable    ${handles}[-1]
    Set Global Variable    ${cms_handle}

    Switch Window    ${cms_handle}

    Wait Until Location Contains
    ...    sandbox-wabisnis-dashboard
    ...    10s

    Maximize Browser Window

    Log To Console
    ...    CMS Handle : ${cms_handle}

    Log To Console
    ...    URL : ${CURDIR}

Open Browser Whatsapp Web
    [Arguments]    ${w_url}=${Web_Whatsapp}
    Execute Javascript
    ...    window.open('${w_url}', '_blank')
    Sleep    2s
    @{handles}=    Get Window Handles
    ${whatsapp_handle}    Set Variable    ${handles}[-1]
    Set Global Variable    ${whatsapp_handle}
    Switch Window    ${whatsapp_handle}
    Wait Until Location Contains
    ...    web.whatsapp.com
    ...    10s
    Maximize Browser Window
    Log To Console
    ...    WA Web Handle :    ${whatsapp_handle}

Open Share Page
    Execute Javascript
    ...    window.open('${share_url}', '_blank');

    Sleep    2s

    @{handles}=    Get Window Handles
    ${share_handle}=    Set Variable    ${handles}[-1]

    Set Global Variable    ${share_handle}

    Switch Window    ${share_handle}

    Maximize Browser Window

    Log To Console    Share Handle: ${share_handle}

#Handling Captcha Reusable
Wait Until Captcha Solved
    [Arguments]    ${timeout}=2 min
    Wait Until Keyword Succeeds
    ...    ${timeout}
    ...    1 sec
    ...    Captcha Token Should Exist

Captcha Token Should Exist
    ${token}=    Execute Javascript
    ...    return document.getElementById('g-recaptcha-response').value;
    Should Not Be Empty    ${token}

#Handling Whatsapp Scan
Wait Until Scan Login Whatsapp Web Complete
    [Arguments]    ${timeout}=5 min
    Wait Until Keyword Succeeds
    ...    ${timeout}
    ...    2 sec
    ...    Must Complete Scan Whatsapp Web
Must Complete Scan Whatsapp Web
    #Keyword dengan locator text dibawah ini digunakan ketika pertama kali login whatsapp web dengan nomor kosongan
    Wait Until Page Contains Element    //div[@aria-label="Chat list" or @data-tab="3"]    timeout=60s
  

#Deep Click Reusable
Safe Click
    [Arguments]    ${locator}

    Wait Until Element Is Visible    ${locator}    10s
    Wait Until Element Is Enabled    ${locator}    10s

    ${element}=    Get WebElement    ${locator}

    Execute Javascript
    ...    arguments[0].scrollIntoView({block:'center'});
    ...    ARGUMENTS    ${element}

    Sleep    300ms

    Click Element    ${locator}

#Scenario Reusable
Valid Login Affiliate
    Wait Until Element Is Visible    id=username
    Input Text    id=username    ${username}
    Wait Until Element Is Visible    id=password    #id=password-sr
    Input Text    id=password   ${password}
    Sleep    2s
    # Wait Until Captcha Solved
    Wait Until Element Is Visible    //button[@type='submit']
    Click Button    //button[@type='submit']
    Sleep    5s

Valid Login Merchant
    [Arguments]    ${usn_m}=${username_merchant}    ${pass_m}=${password_merchant}
    
    Wait Until Element Is Visible    //p[contains(normalize-space(.),'Silahkan masuk untuk mengelola toko Anda')]    3s
    Wait Until Element Is Visible    id=username    3s
    Input Text    id=username    ${usn_m}
    Wait Until Element Is Visible    id=password    3s
    Input Text    id=password    ${pass_m}
    Sleep    2s  
    # Wait Until Captcha Solved 
    Wait Until Element Is Visible    //button[@type='submit']    3s
    Click Button    //button[@type='submit']
    Sleep    4s

User berada di dashboard staging merchant
    Wait Until Element Is Visible    //span[normalize-space(.)='Beranda']    2s

Pilih Merchant    #Untuk memilih TestData Merchant pada Dashboard Staging Merchant
    [Arguments]    ${merchant_sekarang}    ${merchant_tujuan}
    Wait Until Element Is Visible    //button[.//p[normalize-space()='${merchant_sekarang}']]
    Safe Click    //button[.//p[normalize-space()='${merchant_sekarang}']]
    Wait Until Element Is Visible    //li[@role='menuitem'][.//p[normalize-space()='${merchant_tujuan}']]
    Safe Click    //li[@role='menuitem'][.//p[normalize-space()='${merchant_tujuan}']]
    Wait Until Element Contains    //button[.//p]    ${merchant_tujuan}


Click modalPopUP complete Profile Affiliate    #For Affiliate Dashboard
    Wait Until Element Is Visible    ${close_modal_popUp_completeYourProfile}
    Click Element      ${close_modal_popUp_completeYourProfile}

Click modalPopUP dashboard-merchant untuk complete profile
    Wait Until Element Is Visible    //p[normalize-space()='Selamat Datang di Pagii Chatshop']    3s
    Scroll Element Into View    //button[normalize-space()='Mengerti, Mulai Sekarang']
    Click Element      //button[normalize-space()='Mengerti, Mulai Sekarang']

Click switch user cms merchant
    Pilih Merchant    UNshop    El Bandung STG
    # Wait Until Element Is Visible    xpath=//button[.//p[normalize-space()='EDL Baby Stg']]    10s
    # Click Element    xpath=//button[.//p[normalize-space()='EDL Baby Stg']]


    # Wait Until Element Is Visible    xpath=//li[@role='menuitem' and .//p[normalize-space()='El Bandung STG']]    10s
    # Click Element    xpath=//li[@role='menuitem' and .//p[normalize-space()='El Bandung STG']]
    
Dashboard Pagii Affiliate
    [Documentation]    Keyword ini digunakan ketika user sudah complete profile
    Wait Until Element Is Visible    //span[text()='Chatshop Affiliate']    2s

Delete List Grup Produk
    Wait Until Element Is Visible    //h2[normalize-space()='Grup Produk']    2s
    Click Button    //button[@title='Hapus']
    Wait Until Element Is Visible    //h2[normalize-space()='Hapus Grup']
    Click Button    //button[normalize-space()='Hapus']
    Sleep    1s
    Close Browser

Check Locator List Produk
    ${is_locator_visible}=    Run Keyword And Return Status    Page Should Contain Element    ${locator_list_produk}
    IF    ${is_locator_visible}
        FOR    ${i}    IN RANGE    5
        Scroll Element Into View    ${locator_list_produk}
        END
    ELSE
        FOR    ${i}    IN RANGE    5
        Scroll Element Into View    ${locator_list_produk_alt}
        END
    END

Pilih Produk
    ${is_check_produk_visible}=    Run Keyword And Return Status    Page Should Contain Element    ${check_produk}
    IF    ${is_check_produk_visible}
        Click Element    ${check_produk}
    ELSE
        Click Element    ${check_produk_alt}
    END

Set Zoom Value
    [Arguments]    ${zoom_value}
    ${slider}=    Get WebElement    ${zoom_slider}
    Execute JavaScript    
    ...    var nativeInputValueSetter = Object.getOwnPropertyDescriptor(window.HTMLInputElement.prototype, 'value').set;
    ...    nativeInputValueSetter.call(arguments[0], arguments[1]);
    ...    arguments[0].dispatchEvent(new Event('input', { bubbles: true }));
    ...    arguments[0].dispatchEvent(new Event('change', { bubbles: true }));
    ...    ARGUMENTS    ${slider}    ${zoom_value}

Zoom In
    Set Zoom Value    3    

Zoom Out
    Set Zoom Value    1  

User Berada Pada Halaman Group Produk
    Wait Until Element Is Visible    //a[@href='/products/browse']    2s
    Click Element    //a[@href='/products/browse']
    Wait Until Element Is Visible    //button[text()='Jelajahi Produk']    2s
    Click Element    //button[text()='Grup Produk']
    Capture Page Screenshot
    Sleep    2s

Scroll To Middle Banner After Adjust Banner
    Execute Javascript    document.querySelector('.p-6.overflow-y-auto.space-y-6').scrollTop -= 100

Login Merchant Dengan Data Valid
    Open Browser Staging Merchant
    Valid Login Merchant

Berada Pada Halaman Produk CMS Merchant
    Click modalPopUP dashboard-merchant untuk complete profile
    Pilih Merchant    UNshop    EDL Baby Stg
    Wait Until Page Contains Element    (//span[contains(text(),'Produk')])[1]
    Click Element    (//span[contains(text(),'Produk')])[1]
    Wait Until Page Contains Element    (//span[contains(text(),'Daftar Produk')])[1]
    Click Element    (//span[contains(text(),'Daftar Produk')])[1]

User Verify Error Informasi Pengiriman
    [Arguments]    @{messages}
    FOR    ${message}    IN    @{messages}
        Wait Until Element Is Visible
        ...    xpath=//p[contains(normalize-space(.),"${message}")]
        ...    5s
    END
    Capture Page Screenshot    EMBED

Check Merchant Delivery CMS
    Open Chrome With Notification Blocked
    Open Browser Staging Merchant
    Valid Login Merchant
    User berada di dashboard staging merchant 
    Click modalPopUP dashboard-merchant untuk complete profile
    Pilih Merchant    merchant_sekarang=UNshop    merchant_tujuan=EDL Baby Stg
    Wait Until Page Contains Element    (//span[contains(text(),'Pengaturan')])[1]
    Click Element    (//span[contains(text(),'Pengaturan')])[1]
    Wait Until Page Contains Element    (//span[contains(text(),'Pengaturan Pengiriman')])[1]
    Scroll Element Into View    (//span[contains(text(),'Pengaturan Pengiriman')])[1]
    Click Element    (//span[contains(text(),'Pengaturan Pengiriman')])[1]
    Wait Until Page Contains Element    //p[contains(text(),'Admin perlu memindahkan pesanan ke "Siap Dijemput"')]
    Scroll Element Into View    //p[contains(text(),'Admin perlu memindahkan pesanan ke "Siap Dijemput"')]
    Capture Page Screenshot    EMBED

Check Transaksi Expired CMS
    Open Chrome With Notification Blocked
    Open Browser Staging Merchant
    Valid Login Merchant
    User berada di dashboard staging merchant 
    Click modalPopUP dashboard-merchant untuk complete profile
    Pilih Merchant    merchant_sekarang=UNshop    merchant_tujuan=EDL Baby Stg
    Wait Until Page Contains Element    //span[contains(text(),'Penjualan Retail')]
    Click Element    //span[contains(text(),'Penjualan Retail')]
    Wait Until Page Contains Element    (//span[contains(text(),'Batal')])[1]
    Scroll Element Into View    (//span[contains(text(),'Batal')])[1]
    Click Element    (//span[contains(text(),'Batal')])[1]
    Wait Until Page Contains Element    (//button[@type='button'][normalize-space()='Detail'])[1]
    Click Element    (//button[@type='button'][normalize-space()='Detail'])[1]

Switch Merchant CMS To EDL Baby STG
    Open Chrome With Notification Blocked
    Open Browser Staging Merchant
    Valid Login Merchant
    User berada di dashboard staging merchant 
    Click modalPopUP dashboard-merchant untuk complete profile
    Pilih Merchant    merchant_sekarang=UNshop    merchant_tujuan=EDL Baby Stg

Open Merchant CMS UNshop Merchant
    Open Chrome With Notification Blocked
    Open Browser Staging Merchant
    Valid Login Merchant
    User berada di dashboard staging merchant 
    Click modalPopUP dashboard-merchant untuk complete profile