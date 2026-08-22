*** Variables ***
#Base URL and Browser
${BASE_URL}    https://sandbox-wabisnis-affiliate.stagingapps.net/login
${MERCHANT_URL}    https://sandbox-wabisnis-dashboard.stagingapps.net/login
${Web_Whatsapp}    https://web.whatsapp.com/
${CHROME_PROFILE_whatsapp}   user-data-dir=C:/chrome-wa-session
${BROWSER}     chrome

#Test Data Reusable
#Login Affiliate Staging
${username}    josmith00    #TitoR    #dedeanjar    #putri_aff
${password}    Trusttest00    #P@ssw0rd        #BlokC146    #Putri_aff1        
#Login Merchant Staging
${username_merchant}    UNshop1    #qaadminstg
${password_merchant}    Qa admin1.    #Qaadmin1

#Locator Reusable
#Locator modal pop up new user
${close_modal_popUp_completeYourProfile}    xpath=//span[@class="material-symbols-outlined text-2xl text-slate-500" and text()="close"]

#Locator container list produk di popup Buat Grup / Edit Grup (section Pilih Produk)
${locator_list_produk}    xpath=//div[contains(@class,'border') and contains(@class,'border-slate-200') and contains(@class,'rounded-xl') and contains(@class,'max-h-64') and contains(@class,'overflow-y-auto')]
#Locator container list produk - alternatif via index pertama
${locator_list_produk_alt}    xpath=(//div[contains(@class,'border-slate-200') and contains(@class,'rounded-xl') and contains(@class,'max-h-64') and contains(@class,'overflow-y-auto')])[1]

#Locator item produk pertama di popup Buat Grup / Edit Grup (untuk click check/uncheck)
${check_produk}    xpath=(//div[contains(@class,'border-slate-200') and contains(@class,'rounded-xl') and contains(@class,'max-h-64') and contains(@class,'overflow-y-auto')]//div[contains(@class,'cursor-pointer') and contains(@class,'flex') and contains(@class,'items-center')])[1]
#Locator item produk pertama - alternatif
${check_produk_alt}    xpath=(//div[contains(@class,'max-h-64') and contains(@class,'overflow-y-auto')]//div[contains(@class,'relative') and contains(@class,'flex') and contains(@class,'cursor-pointer')])[1]

#Zoom in or Zoom Out Variable
${zoom_slider}    //input[@type='range']

#Locator tab single produk di menu produk
${singleProduk-tab}    (//button[@class='flex items-center gap-2 px-1 py-3 text-sm font-semibold border-b-2 transition-colors border-transparent text-slate-500 hover:text-slate-700 hover:border-slate-300'])[2]

#Locator Foldering&Image
${folder_download}    C:/Users/WGS-LAP.251/Downloads
${path_img}    C:/Users/titor/Downloads/robot_trainingImage/dragonball_DaimaGoku.jpg    #smooets_logoup.jpeg #ImageHD.jpg #vegeta_daima.jpeg #C:/Photoes/Stock Man 2.jpg

#variable mobile
${REMOTE_URL}    http://127.0.0.1:4723
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    12.0
${DEVICE_NAME}    R9RNB021V9W