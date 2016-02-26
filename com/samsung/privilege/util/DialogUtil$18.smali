.class Lcom/samsung/privilege/util/DialogUtil$18;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogUtil;->showDialogContinueUrl(Landroid/app/Activity;Landroid/os/Handler;Lcom/samsung/privilege/bean/CampaignView;Lcom/bitmapfun/util/ImageFetcher;Lcom/samsung/privilege/bean/NFCTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activityContext:Landroid/app/Activity;

.field private final synthetic val$campaign:Lcom/samsung/privilege/bean/CampaignView;

.field private final synthetic val$dialogSerial:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lcom/samsung/privilege/bean/CampaignView;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$dialogSerial:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$campaign:Lcom/samsung/privilege/bean/CampaignView;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    .line 1958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1960
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1961
    const/4 v5, 0x1

    sput-boolean v5, Lcom/samsung/privilege/util/DialogUtil;->gIsFinish:Z

    .line 1963
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$campaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v5, Lcom/samsung/privilege/bean/CampaignView;->CustomInput:Ljava/lang/String;

    .line 1966
    .local v4, "url":Ljava/lang/String;
    :try_start_c
    const-string v5, "{campaign_id}"

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$campaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v6, v6, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v6}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1967
    const-string v5, "{token}"

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1968
    const-string v5, "{return_url}"

    const-string v6, "bzbs_return_url"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1969
    const-string v5, "{cancel_url}"

    const-string v6, "bzbs_cancel_url"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1970
    const-string v5, "{locale}"

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1971
    const-string v5, "{user_id}"

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_65} :catch_1a6

    move-result-object v4

    .line 1976
    :goto_66
    new-instance v1, Lcom/samsung/privilege/util/DeviceHelper;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    invoke-direct {v1, v5}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1979
    .local v1, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :try_start_6d
    const-string v5, "{version}"

    invoke-virtual {v1}, Lcom/samsung/privilege/util/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7c} :catch_1c3

    move-result-object v4

    .line 1986
    :goto_7d
    :try_start_7d
    const-string v5, "{imie}"

    invoke-virtual {v1}, Lcom/samsung/privilege/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8c} :catch_1e8

    move-result-object v4

    .line 1993
    :goto_8d
    :try_start_8d
    const-string v5, "{model}"

    invoke-virtual {v1}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9c} :catch_20d

    move-result-object v4

    .line 2000
    :goto_9d
    :try_start_9d
    const-string v5, "{manufacturer}"

    invoke-virtual {v1}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ac} :catch_232

    move-result-object v4

    .line 2007
    :goto_ad
    :try_start_ad
    const-string v5, "{androidid}"

    invoke-virtual {v1}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_bc} :catch_257

    move-result-object v4

    .line 2014
    :goto_bd
    :try_start_bd
    const-string v5, "{macaddress}"

    invoke-virtual {v1}, Lcom/samsung/privilege/util/DeviceHelper;->getWifiAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_cc} :catch_27c

    move-result-object v4

    .line 2028
    :goto_cd
    :try_start_cd
    const-string v5, "{serialno}"

    invoke-virtual {v1}, Lcom/samsung/privilege/util/DeviceHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_dc} :catch_2a1

    move-result-object v4

    .line 2035
    :goto_dd
    :try_start_dd
    const-string v5, "{fbid}"

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2036
    const-string v5, "{fbname}"

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetFacebookName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2037
    const-string v5, "{fbtoken}"

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2038
    const-string v5, "{bztoken}"

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2039
    const-string v5, "{bztoken2}"

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2041
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2042
    .local v0, "date":Ljava/util/Date;
    const-string v5, "{times}"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_152} :catch_2c6

    move-result-object v4

    .line 2047
    .end local v0    # "date":Ljava/util/Date;
    :goto_153
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    const-class v6, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2049
    .local v3, "intent":Landroid/content/Intent;
    :try_start_15c
    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17b

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17b

    .line 2050
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_17a} :catch_2e3

    move-result-object v4

    .line 2061
    :cond_17b
    :goto_17b
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_199

    .line 2062
    const-string v5, "FW_URL"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "url="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    invoke-static {v5, v6, v7}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2065
    :cond_199
    const-string v5, "url"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2066
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$18;->val$activityContext:Landroid/app/Activity;

    const/16 v6, 0x14

    invoke-virtual {v5, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2067
    return-void

    .line 1972
    .end local v1    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1a6
    move-exception v2

    .line 1973
    .local v2, "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/DialogUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception|replaceurl|1 := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 1980
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :catch_1c3
    move-exception v2

    .line 1981
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "{version}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1982
    # getter for: Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/DialogUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception|version := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 1987
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1e8
    move-exception v2

    .line 1988
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "{imie}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1989
    # getter for: Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/DialogUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception|imie := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8d

    .line 1994
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_20d
    move-exception v2

    .line 1995
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "{model}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1996
    # getter for: Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/DialogUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception|model := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9d

    .line 2001
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_232
    move-exception v2

    .line 2002
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "{manufacturer}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2003
    # getter for: Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/DialogUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception|manufacturer := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ad

    .line 2008
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_257
    move-exception v2

    .line 2009
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "{androidid}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2010
    # getter for: Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/DialogUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception|androidid := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bd

    .line 2015
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_27c
    move-exception v2

    .line 2016
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "{macaddress}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2017
    # getter for: Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/DialogUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception|macaddress := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cd

    .line 2029
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2a1
    move-exception v2

    .line 2030
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "{serialno}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2031
    # getter for: Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/DialogUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception|serialno := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_dd

    .line 2043
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2c6
    move-exception v2

    .line 2044
    .restart local v2    # "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/DialogUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception|xxx := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_153

    .line 2057
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_2e3
    move-exception v2

    .line 2058
    .restart local v2    # "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/DialogUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception|showRedeem := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17b
.end method
