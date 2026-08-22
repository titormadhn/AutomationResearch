*** Variables ***
#--------------Registration-----------------#

#--General--#
${field_fullName}    M Tito Ramadhan
${field_email}    titoqa17@yopmail.com
${textMailnator}    titoqa17   #buat email OTP

#--Flutter Android--#
# Locator Radio Button Register As
${individual}    //android.widget.RadioButton[@resource-id="checkBoxIndividualId"]
${company}    //android.widget.RadioButton[@resource-id="checkBoxCompanyId"]

#--Native Android--#
# Locator Radio Button Daftar Sebagai
${perorangan}    //android.widget.RadioButton[@content-desc="radionbutton_page_pendaftaran_tipe"][1]
${badanUsaha}    //android.widget.RadioButton[@content-desc="radionbutton_page_pendaftaran_tipe"][2]