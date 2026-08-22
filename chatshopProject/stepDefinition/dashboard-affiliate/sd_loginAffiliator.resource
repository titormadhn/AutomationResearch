*** Settings ***
Resource    ../../utility/dashboard-affiliate/globalKeyword.resource

*** Keywords ***
User telah membuka website pagii affiliate
    Open Browser Staging Affiliate
User input form login dengan data valid
    Valid Login Affiliate
User berhasil login dan diarahkan ke halaman Dashboard Affiliator
    ${is_complete_profile_popup}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible    (//h2[normalize-space()='Complete your profile'])[1]    3s    #check complete profile
    IF    ${is_complete_profile_popup}
        Click Element    //span[@class="material-symbols-outlined text-2xl text-slate-500" and text()="close"]
    END
    Dashboard Pagii Affiliate
    Sleep    1s
    ${nameUser}    Get Text    //div[@class="text-sm font-semibold text-slate-900 whitespace-nowrap overflow-hidden text-ellipsis"]
    Capture Page Screenshot    Embed
    Sleep    1s

User melakukan login dengan username dan kata sandi yang valid
    Valid Login Affiliate

User Sudah Run testcase "Open Group Produk ketika belum ada 'Grup Produk'"
    Sleep    5s
    Click modalPopUP complete Profile Affiliate

