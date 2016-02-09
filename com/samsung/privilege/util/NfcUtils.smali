.class public Lcom/samsung/privilege/util/NfcUtils;
.super Ljava/lang/Object;
.source "NfcUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/samsung/privilege/util/NfcUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/NfcUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Action_CheckIn(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 10
    .param p0, "objNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;
    .param p1, "objActivityContext"    # Landroid/content/Context;
    .param p2, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 232
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v2, "params":Landroid/os/Bundle;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 234
    .local v6, "gLocation":Lorg/json/JSONObject;
    const-string v0, "message"

    iget-object v3, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "place"

    iget-object v3, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "target_id"

    iget-object v3, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "access_token"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "me/feed"

    .line 247
    .local v1, "url":Ljava/lang/String;
    sget-object v0, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    if-nez v0, :cond_44

    .line 248
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    new-instance v3, Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    sput-object v0, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 251
    :cond_44
    sget-object v0, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v3, "POST"

    new-instance v4, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;

    iget-object v5, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-direct {v4, p1, p2, v5}, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method public static Action_OpenApp(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V
    .registers 9
    .param p0, "objNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;
    .param p1, "objActivityContext"    # Landroid/content/Context;

    .prologue
    .line 263
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 264
    .local v0, "LaunchApp":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 272
    .end local v0    # "LaunchApp":Landroid/content/Intent;
    :goto_d
    return-void

    .line 265
    :catch_e
    move-exception v2

    .line 267
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_f
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "market://details?id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_2e} :catch_2f

    goto :goto_d

    .line 268
    :catch_2f
    move-exception v1

    .line 269
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://play.google.com/store/apps/details?id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d
.end method

.method public static Action_OpenUrl(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V
    .registers 5
    .param p0, "objNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;
    .param p1, "objActivityContext"    # Landroid/content/Context;

    .prologue
    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenUrl_Link:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 277
    return-void
.end method

.method public static Action_ReDeem(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V
    .registers 5
    .param p0, "objNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;
    .param p1, "objActivityContext"    # Landroid/content/Context;

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign_id"

    iget v2, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_CampaignID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    const-string v1, "nfc_tag"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 259
    return-void
.end method

.method public static Action_Share(Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 10
    .param p0, "objNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;
    .param p1, "objNFCTagReDeem"    # Lcom/samsung/privilege/bean/NFCTag;
    .param p2, "objActivityContext"    # Landroid/content/Context;
    .param p3, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v1, "params":Landroid/os/Bundle;
    const-string v4, "app_id"

    iget-object v5, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_app_id:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v4, "to"

    invoke-static {p2}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v4, "link"

    iget-object v5, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_link:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v4, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_name:Ljava/lang/String;

    if-eqz v4, :cond_31

    iget-object v4, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_name:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 127
    const-string v4, "name"

    iget-object v5, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_31
    iget-object v4, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_caption:Ljava/lang/String;

    if-eqz v4, :cond_46

    iget-object v4, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_caption:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 130
    const-string v4, "caption"

    iget-object v5, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_caption:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_46
    iget-object v4, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_picture:Ljava/lang/String;

    if-eqz v4, :cond_5b

    iget-object v4, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_picture:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 133
    const-string v4, "picture"

    iget-object v5, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_picture:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_5b
    iget-object v4, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_description:Ljava/lang/String;

    if-eqz v4, :cond_70

    iget-object v4, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_description:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    .line 136
    const-string v4, "description"

    iget-object v5, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_description:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_70
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 142
    .local v2, "session":Lcom/facebook/Session;
    if-nez v2, :cond_7b

    .line 143
    const/4 v4, 0x0

    invoke-static {p2, v4}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    .line 214
    :goto_7a
    return-void

    .line 145
    :cond_7b
    new-instance v0, Lcom/facebook/widget/WebDialog$Builder;

    const-string v4, "feed"

    invoke-direct {v0, p2, v2, v4, v1}, Lcom/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 146
    .local v0, "builder":Lcom/facebook/widget/WebDialog$Builder;
    new-instance v4, Lcom/samsung/privilege/util/NfcUtils$1;

    invoke-direct {v4, p2, p3, p1, p0}, Lcom/samsung/privilege/util/NfcUtils$1;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;)V

    invoke-virtual {v0, v4}, Lcom/facebook/widget/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 211
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$Builder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v3

    .line 212
    .local v3, "webDialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v3}, Lcom/facebook/widget/WebDialog;->show()V

    goto :goto_7a
.end method

.method public static Action_Status(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 10
    .param p0, "objNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;
    .param p1, "objActivityContext"    # Landroid/content/Context;
    .param p2, "objHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x0

    .line 106
    iget-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Status_Message:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Status_Message:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 107
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v2, "params":Landroid/os/Bundle;
    const-string v0, "message"

    iget-object v3, p0, Lcom/samsung/privilege/bean/NFCTag;->Status_Message:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "access_token"

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "me/feed"

    .line 112
    .local v1, "url":Ljava/lang/String;
    sget-object v0, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    if-nez v0, :cond_3c

    .line 113
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    new-instance v3, Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    sput-object v0, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 116
    :cond_3c
    sget-object v0, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v3, "POST"

    new-instance v4, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;

    iget-object v6, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-direct {v4, p1, p2, v6}, Lcom/samsung/privilege/util/ListenerUtil$FacebookPostListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 118
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "params":Landroid/os/Bundle;
    :cond_4a
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/privilege/util/NfcUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 279
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/util/NfcUtils;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method public static getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;
    .registers 11
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    .local v4, "msgs":[Landroid/nfc/NdefMessage;
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    const-string v7, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 49
    :cond_17
    const-string v7, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 50
    .local v5, "rawMsgs":[Landroid/os/Parcelable;
    if-eqz v5, :cond_30

    .line 51
    array-length v7, v5

    new-array v4, v7, [Landroid/nfc/NdefMessage;

    .line 52
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    array-length v7, v5

    if-lt v2, v7, :cond_27

    .line 65
    .end local v2    # "i":I
    .end local v5    # "rawMsgs":[Landroid/os/Parcelable;
    :goto_26
    return-object v4

    .line 53
    .restart local v2    # "i":I
    .restart local v5    # "rawMsgs":[Landroid/os/Parcelable;
    :cond_27
    aget-object v7, v5, v2

    check-cast v7, Landroid/nfc/NdefMessage;

    aput-object v7, v4, v2

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 57
    .end local v2    # "i":I
    :cond_30
    new-array v1, v8, [B

    .line 58
    .local v1, "empty":[B
    new-instance v6, Landroid/nfc/NdefRecord;

    const/4 v7, 0x5

    invoke-direct {v6, v7, v1, v1, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 59
    .local v6, "record":Landroid/nfc/NdefRecord;
    new-instance v3, Landroid/nfc/NdefMessage;

    new-array v7, v9, [Landroid/nfc/NdefRecord;

    aput-object v6, v7, v8

    invoke-direct {v3, v7}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 60
    .local v3, "msg":Landroid/nfc/NdefMessage;
    new-array v4, v9, [Landroid/nfc/NdefMessage;

    .end local v4    # "msgs":[Landroid/nfc/NdefMessage;
    aput-object v3, v4, v8

    .line 62
    .restart local v4    # "msgs":[Landroid/nfc/NdefMessage;
    goto :goto_26

    .line 63
    .end local v1    # "empty":[B
    .end local v3    # "msg":Landroid/nfc/NdefMessage;
    .end local v5    # "rawMsgs":[Landroid/os/Parcelable;
    .end local v6    # "record":Landroid/nfc/NdefRecord;
    :cond_46
    sget-object v7, Lcom/samsung/privilege/util/NfcUtils;->TAG:Ljava/lang/String;

    const-string v8, "Unknown intent."

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method private static showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4
    .param p0, "objActivityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v0, Lcom/samsung/privilege/util/NfcUtils$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/privilege/util/NfcUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    return-void
.end method


# virtual methods
.method public writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Ljava/lang/String;
    .registers 10
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v4

    array-length v3, v4

    .line 72
    .local v3, "size":I
    :try_start_5
    invoke-static {p2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    .line 73
    .local v2, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v2, :cond_6b

    .line 74
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 76
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v4

    if-nez v4, :cond_36

    .line 77
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Tag is read-only."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1c

    .line 100
    .end local v2    # "ndef":Landroid/nfc/tech/Ndef;
    :catch_1c
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to write tag:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ndef":Landroid/nfc/tech/Ndef;
    :cond_36
    :try_start_36
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v4

    if-ge v4, v3, :cond_65

    .line 80
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Tag capacity is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes, message is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 83
    :cond_65
    invoke-virtual {v2, p1}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_68} :catch_1c

    .line 84
    const-string v4, "Wrote message to pre-formatted tag."

    .line 92
    :goto_6a
    return-object v4

    .line 86
    :cond_6b
    :try_start_6b
    invoke-static {p2}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_1c

    move-result-object v1

    .line 87
    .local v1, "format":Landroid/nfc/tech/NdefFormatable;
    if-eqz v1, :cond_83

    .line 89
    :try_start_71
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 90
    invoke-virtual {v1, p1}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_77} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_77} :catch_1c

    .line 92
    const-string v4, "Formatted tag and wrote message"

    goto :goto_6a

    .line 93
    :catch_7a
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    :try_start_7b
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Failed to format tag."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    :cond_83
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Tag doesn\'t support NDEF."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_8b} :catch_1c
.end method
