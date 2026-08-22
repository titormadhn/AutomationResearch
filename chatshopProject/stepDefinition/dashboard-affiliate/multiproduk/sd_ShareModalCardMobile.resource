*** Settings ***
Library    AppiumLibrary
Library    ../../../utility/dashboard-affiliate/QRDecoder.py
Resource    ../../../utility/dashboard-affiliate/mobileKeyword.resource

*** Keywords ***
#007 - User click 'Bagikan ke Whatsapp' di Mobile device kondisi sudah login whatsapp app
User Click Menu Produk Mobile
    Element Should Be Visible    //header/div[1]/button
    Click Element    //header/div[1]/button
    Wait Until Element Is Visible    //nav/a[3]
    Click Element    //nav/a[3]
User Click Tab Grup Produk Mobile
    Wait Until Element Is Visible    //main/div/div/div[1]/nav/button[3]
    Click Element    //main/div/div/div[1]/nav/button[3]
User Click Button Bagikan Pada Card Grup Produk Mobile
    Execute Script    window.scrollTo(0, document.body.scrollHeight);
    Wait Until Element Is Visible   xpath=//main/div/div/div[2]/div/div[2]/div/div[2]/div[2]/div/button
    Click Element    xpath=//main/div/div/div[2]/div/div[2]/div/div[2]/div[2]/div/button
    Sleep    5s
User Click Button Bagikan ke Whatsapp Mobile
    Wait Until Element Is Visible    xpath=//main/div/div/div[2]/div/div[3]/div/div[4]/button
    Click Element    xpath=//main/div/div/div[2]/div/div[3]/div/div[4]/button
    Sleep    5s
Direct ke aplikasi whatsapp
    Switch To Context    NATIVE_APP
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Send to…"]
User Pilih Kontak Yang Akan Dikirimi Pesan
    Wait Until Element Is Visible    xpath=//android.widget.RadioButton[@content-desc=", Message yourself"]
    Click Element    xpath=//android.widget.RadioButton[@content-desc=", Message yourself"]
User Click Button Kirim Pada Aplikasi Whatsapp
    Wait Until Element Is Visible    id=com.whatsapp:id/send
    Click Element    id=com.whatsapp:id/send
    Wait Until Element Is Visible    id=com.whatsapp:id/entry
    Capture Page Screenshot    EMBED
    Sleep   2s
    Wait Until Element Is Visible    id=com.whatsapp:id/send
    Click Element    id=com.whatsapp:id/send
Berhasil Share Grup Produk Ke Whatsapp Mobile
    Sleep    2s
    Capture Page Screenshot    EMBED

#008 - User click 'Bagikan ke Whatsapp' di Mobile device kondisi whatsapp app tidak terinstall
Switch To WhatsApp Window
    [Arguments]    ${driver}
    ${handles}=    Evaluate    $driver.window_handles
    FOR    ${handle}    IN    @{handles}
        Evaluate    $driver.switch_to.window($handle)
        ${url}=    Execute Script    return window.location.href;
        ${found}=    Run Keyword And Return Status
        ...    Should Contain    ${url}    whatsapp.com
        Exit For Loop If    ${found}
    END
    Should Be True    ${found}    msg=Window dengan URL whatsapp.com tidak ditemukan
Direct ke halaman api.whatsapp.com untuk mengunduh aplikasi whatsapp
    ${appium_lib}=    Get Library Instance    AppiumLibrary
    ${driver}=    Call Method    ${appium_lib}    _current_application
    Wait Until Keyword Succeeds    15s    1s
    ...    Switch To WhatsApp Window    ${driver}
    Wait Until Page Contains Element
    ...    xpath=//*[contains(text(),"Share on WhatsApp")]
    ...    timeout=15s
    ${current_url}=    Execute Script    return window.location.href;
    Should Contain    ${current_url}    api.whatsapp.com
    Log To Console    Redirect URL: ${current_url}
    Capture Page Screenshot    EMBED


#009 - Akses share link dengan Scan Kode QR di Pop Up 'Bagikan Grup Produk'
User Scan Kode QR di Pop Up 'Bagikan Grup Produk' Mobile
    [Arguments]    ${qr_locator}=xpath=//main/div/div/div[2]/div/div[3]/div/div[5]/div/div[2]/img    ${screenshot_path}=${OUTPUT_DIR}/qr_capture.png    ${cropped_path}=${OUTPUT_DIR}/qr_cropped.png
    Wait Until Element Is Visible    ${qr_locator}    timeout=10s
    Capture Page Screenshot    ${screenshot_path}
    ${qr_content}=    Decode QR Code From Image    ${screenshot_path}
    Log To Console    QR Code Content: ${qr_content}
    RETURN    ${qr_content}
Berhasil Scan Kode QR dan diarahkan ke halaman grup produk yang sudah di share
    [Arguments]    ${qr_locator}=xpath=//main/div/div/div[2]/div/div[3]/div/div[5]/div/div[2]/img
    ${qr_url}=    User Scan Kode QR di Pop Up 'Bagikan Grup Produk' Mobile    ${qr_locator}
    Should Start With    ${qr_url}    https://
    Log To Console    Deep link terdeteksi: ${qr_url}
    Go To Url    ${qr_url}
    Sleep    5s
    Capture Page Screenshot    EMBED