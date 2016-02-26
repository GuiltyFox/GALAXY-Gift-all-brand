.class public Lcom/samsung/privilege/UserLogin;
.super Ljava/lang/Object;
.source "UserLogin.java"


# static fields
.field public static ID_ADMIN:Ljava/lang/String;

.field public static PREF_KEY_NOTCLEAR:Ljava/lang/String;

.field public static PREF_KEY_USERLOGIN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "UserLogin"

    sput-object v0, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    .line 22
    const-string v0, "KeyNotClear"

    sput-object v0, Lcom/samsung/privilege/UserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    .line 23
    const-string v0, "(Manni Sriwongmas){695675570},(Paeng Vorawut){100001501983286},(Ferdinand Gutierrez){586862472},(pupe Udomdej){600156041},(nong.annything){100002093463942},(Buzzebees App){100004153410428},(Kieak Kitti){100002510990024},(anchalikaa){539831171},(vee.vin.12){100006407738570},(Mew Jaa){100006291181618},(Varin Singh){1751247024},(miewdivasang){1084857009},(Ann Sopawan){1495332876},(MaleePrincess Pattama){682916828},(Pat PK){100001080248961},(\u0e40\u0e14\u0e47\u0e01\u0e1a\u0e49\u0e32\u0e19 \u0e1b\u0e48\u0e32){100003759290285},(Pongsak Meedanpai){100000537824053},(Tavatchai Chalaem){100000595721795},(AobBee Ba){100003939262095},(Dev Suwit){100003763346702},(Aob Zaa){1270290084},(Ba Be Boon){100000457725713},(Bajarabhat Boonsukkerd){100003907882009},(IBaas Yo FuNe){1073075453},(BaasCartel Dna){100000205187418},(Michael Chen){713132344},(Isis Scrubb){100004734994762},(Lee Tok Yo){100003809100483},(Iconcepts Iconcepts){100004925317433}"

    sput-object v0, Lcom/samsung/privilege/UserLogin;->ID_ADMIN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckSessionBuzzeBees(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 499
    if-eqz p0, :cond_12

    .line 500
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_12

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 502
    const/4 v1, 0x1

    .line 507
    .end local v0    # "token":Ljava/lang/String;
    :cond_12
    return v1
.end method

.method public static CheckSessionFacebook(Landroid/content/Context;)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 480
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 481
    .local v0, "session":Lcom/facebook/Session;
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    .line 483
    .local v1, "state":Lcom/facebook/SessionState;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 484
    sget-object v3, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {v1, v3}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    sget-object v3, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {v1, v3}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 485
    :cond_21
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 486
    const/4 v2, 0x1

    .line 494
    :cond_34
    return v2
.end method

.method public static ClearPreferencesFromCurrentBuzzeBeesToken(Landroid/content/Context;)V
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 652
    sget-object v2, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 653
    .local v1, "savedSession":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 654
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 655
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 656
    return-void
.end method

.method public static ClearPreferencesGIFTDATA(Landroid/content/Context;)V
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 659
    const-string v2, "GIFTDATA"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 660
    .local v1, "savedSession":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 661
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 662
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 663
    return-void
.end method

.method public static GetAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 194
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "Address"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetAutoCampaignID(Landroid/content/Context;)I
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 603
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 604
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "AutoCampaignID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static GetAutoCampaignMode(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 593
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 594
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "AutoCampaignMode"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetBirthday(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 204
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 205
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "Birthday"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetDeviceUserUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 67
    const-string v1, "DeviceData"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "DeviceUserUID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetFacebookName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 143
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "FacebookName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 132
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "FacebookUID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetFirstName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 154
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "FirstName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 226
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 227
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "GCM_ID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetGender(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 174
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "Gender"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetIsAcceptTerm(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 45
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsAcceptTerm"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsAllowUse(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 549
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 550
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsAllowUse"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsAskUserEnterProfile(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 397
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 398
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsAskUserEnterProfile"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsAutoLoginFB(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 538
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 539
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsAutoLoginFB"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsFacebookUser(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 215
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsFbUser"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsHasNewVersion(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 560
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 561
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsHasNewVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsNFCWarning(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 270
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 271
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsNFCWarning"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsNotificationOn(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 259
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 260
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsNotificationOn"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsPlayingIntro(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 56
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsPlayingIntro"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsPremium(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 613
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 614
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsPremium"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsShowPointTransfer(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 386
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 387
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsShowPointTransfer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsShowShoppingBasket(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 582
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 583
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsShowShoppingBasket"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsTokenNeedLogout(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 571
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 572
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsTokenNeedLogout"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsshowDialogHasNewVersion(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 248
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 249
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "IsshowDialogHasNewVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetLastName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 164
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "LastName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 632
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 633
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CP_CODE"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 642
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 643
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CP_PMSG"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetLastResumeTime(Landroid/content/Context;)J
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 237
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 238
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "LastResumeTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static GetLastUpdateDevice(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 89
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "LastUpdateDevice"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetLocale(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 112
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "402705486466922"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 115
    const-string v1, "Locale"

    const-string v2, "1033"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    :goto_1b
    return-object v1

    .line 116
    :cond_1c
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "768830479847872"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 117
    const-string v1, "Locale"

    const-string v2, "1108"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 118
    :cond_31
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "517155661760483"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 119
    const-string v1, "Locale"

    const-string v2, "1109"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 121
    :cond_46
    const-string v1, "Locale"

    const-string v2, "1033"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b
.end method

.method public static GetMenuBuzzebeesVisible(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 430
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 431
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "MenuBuzzebeesVisible"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetModeLogin(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "ModeLoginString"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetNotificationList(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 311
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 312
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "NotificationList"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetNotificationListObject(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 15
    .param p0, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/MessageGCM;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 316
    sget-object v9, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 317
    .local v7, "savedSession":Landroid/content/SharedPreferences;
    const-string v9, "NotificationList"

    const-string v10, ""

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 319
    .local v8, "strNotificationList":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v6, "messageGCMs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/MessageGCM;>;"
    if-eqz v8, :cond_32

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32

    .line 323
    const-string v9, "%7C"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 324
    const-string v9, "%7C"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "arrNoti1":[Ljava/lang/String;
    :goto_2e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2f
    array-length v9, v0

    if-lt v3, v9, :cond_38

    .line 361
    .end local v0    # "arrNoti1":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_32
    return-object v6

    .line 326
    :cond_33
    new-array v0, v12, [Ljava/lang/String;

    .line 327
    .restart local v0    # "arrNoti1":[Ljava/lang/String;
    aput-object v8, v0, v11

    goto :goto_2e

    .line 331
    .restart local v3    # "i":I
    :cond_38
    new-instance v5, Lcom/samsung/privilege/bean/MessageGCM;

    invoke-direct {v5}, Lcom/samsung/privilege/bean/MessageGCM;-><init>()V

    .line 332
    .local v5, "messageGCM":Lcom/samsung/privilege/bean/MessageGCM;
    aget-object v9, v0, v3

    const-string v10, "%2C"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "arrNoti2":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_46
    array-length v9, v1

    if-lt v4, v9, :cond_4f

    .line 357
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 334
    :cond_4f
    aget-object v9, v1, v4

    const-string v10, "="

    invoke-virtual {v9, v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "arrTemp":[Ljava/lang/String;
    array-length v9, v2

    if-lt v9, v13, :cond_68

    .line 336
    aget-object v9, v2, v11

    const-string v10, "collapse_key"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 337
    aget-object v9, v2, v12

    iput-object v9, v5, Lcom/samsung/privilege/bean/MessageGCM;->collapse_key:Ljava/lang/String;

    .line 333
    :cond_68
    :goto_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 338
    :cond_6b
    aget-object v9, v2, v11

    const-string v10, "from"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 339
    aget-object v9, v2, v12

    iput-object v9, v5, Lcom/samsung/privilege/bean/MessageGCM;->from:Ljava/lang/String;

    goto :goto_68

    .line 340
    :cond_7a
    aget-object v9, v2, v11

    const-string v10, "type"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_89

    .line 341
    aget-object v9, v2, v12

    iput-object v9, v5, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    goto :goto_68

    .line 342
    :cond_89
    aget-object v9, v2, v11

    const-string v10, "alert"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    .line 343
    aget-object v9, v2, v12

    iput-object v9, v5, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    goto :goto_68

    .line 344
    :cond_98
    aget-object v9, v2, v11

    const-string v10, "object_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a7

    .line 345
    aget-object v9, v2, v12

    iput-object v9, v5, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    goto :goto_68

    .line 346
    :cond_a7
    aget-object v9, v2, v11

    const-string v10, "subject"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b6

    .line 347
    aget-object v9, v2, v12

    iput-object v9, v5, Lcom/samsung/privilege/bean/MessageGCM;->subject:Ljava/lang/String;

    goto :goto_68

    .line 348
    :cond_b6
    aget-object v9, v2, v11

    const-string v10, "agency_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 349
    aget-object v9, v2, v12

    iput-object v9, v5, Lcom/samsung/privilege/bean/MessageGCM;->agency_id:Ljava/lang/String;

    goto :goto_68

    .line 350
    :cond_c5
    aget-object v9, v2, v11

    const-string v10, "url"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d4

    .line 351
    aget-object v9, v2, v12

    iput-object v9, v5, Lcom/samsung/privilege/bean/MessageGCM;->url:Ljava/lang/String;

    goto :goto_68

    .line 352
    :cond_d4
    aget-object v9, v2, v11

    const-string v10, "cp_cat_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 353
    aget-object v9, v2, v12

    iput-object v9, v5, Lcom/samsung/privilege/bean/MessageGCM;->cp_cat_id:Ljava/lang/String;

    goto :goto_68
.end method

.method public static GetNotificationUnReadCount(Landroid/content/Context;)I
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 292
    sget-object v2, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 293
    .local v1, "savedSession":Landroid/content/SharedPreferences;
    const-string v2, "NotificationUnReadCount"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 294
    .local v0, "count":I
    if-gez v0, :cond_10

    .line 295
    const/4 v0, 0x0

    .line 297
    :cond_10
    return v0
.end method

.method public static GetPoints(Landroid/content/Context;)J
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 408
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 409
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "Points"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static GetRank(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 419
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 420
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "Rank"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetStickerOrder(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 281
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "sticker_order"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 441
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 442
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "TokenBuzzeBees"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 446
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "token":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "token_1_digit_frist":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "token_5_digit_last":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "token_cut_1_digit_and_5_digit_last":Ljava/lang/String;
    const-string v4, ""

    .line 454
    .local v4, "token_for_buy":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 460
    :goto_3d
    return-object v4

    .line 457
    :cond_3e
    move-object v4, v0

    goto :goto_3d
.end method

.method public static GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 512
    if-eqz p0, :cond_12

    .line 513
    sget-object v3, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 514
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v3, "TokenFacebook"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 526
    .end local v0    # "savedSession":Landroid/content/SharedPreferences;
    :goto_11
    return-object v3

    .line 516
    :cond_12
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 517
    .local v1, "session":Lcom/facebook/Session;
    invoke-virtual {v1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    .line 519
    .local v2, "state":Lcom/facebook/SessionState;
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 520
    sget-object v3, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {v2, v3}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    sget-object v3, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {v2, v3}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 521
    :cond_32
    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    .line 523
    :cond_37
    const-string v3, ""

    goto :goto_11

    .line 526
    :cond_3a
    const-string v3, ""

    goto :goto_11
.end method

.method public static GetUserCarrier(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 470
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 471
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "UserCarrier"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetUserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "userId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static IS_ADMIN(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v0, Lcom/samsung/privilege/UserLogin;->ID_ADMIN:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 38
    const/4 v0, 0x1

    .line 40
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static Logout(Landroid/content/Context;Z)V
    .registers 7
    .param p0, "objActivityContext"    # Landroid/content/Context;
    .param p1, "isAutoLoginFB"    # Z

    .prologue
    .line 666
    const-string v3, "UserLogin"

    const-string v4, "public static void Logout(final Context objActivityContext) {"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    sget-object v3, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 668
    invoke-static {p0}, Lcom/samsung/privilege/helper/LocalFileHelper;->clearPostAsyncFile(Landroid/content/Context;)V

    .line 669
    invoke-static {p0}, Lcom/samsung/privilege/helper/LocalFileHelper;->clearCatchFile(Landroid/content/Context;)V

    .line 670
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->ClearPreferencesFromCurrentBuzzeBeesToken(Landroid/content/Context;)V

    .line 671
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->ClearPreferencesGIFTDATA(Landroid/content/Context;)V

    .line 672
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 673
    .local v1, "nMgr":Landroid/app/NotificationManager;
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 674
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/service/NotificationBarUtil;->ClearCurrentNotification(Landroid/content/Context;)V

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/util/BBUtil;->unRegisterGCM(Landroid/content/Context;)V

    .line 677
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 678
    .local v2, "session":Lcom/facebook/Session;
    if-eqz v2, :cond_4c

    .line 679
    invoke-virtual {v2}, Lcom/facebook/Session;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 680
    invoke-virtual {v2}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 684
    :cond_4c
    invoke-static {p0, p1}, Lcom/samsung/privilege/UserLogin;->SetIsAutoLoginFB(Landroid/content/Context;Z)Z

    .line 686
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/MainActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 688
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 689
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 690
    return-void
.end method

.method public static SetAddress(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 198
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Address"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetAutoCampaignID(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "campaign_id"    # I

    .prologue
    .line 607
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 608
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "AutoCampaignID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 609
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetAutoCampaignMode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 597
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 598
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "AutoCampaignMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 599
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetBirthday(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 209
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Birthday"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetDeviceUserUID(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v1, "DeviceData"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "DeviceUserUID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetFacebookName(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "FacebookName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetFacebookUID(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "FacebookUID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetFirstName(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "firstname"    # Ljava/lang/String;

    .prologue
    .line 158
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "FirstName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetGCM_ID(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "gcm_id"    # Ljava/lang/String;

    .prologue
    .line 231
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 232
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "GCM_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetGender(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Gender"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsAcceptTerm(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_accept_term"    # Z

    .prologue
    .line 50
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsAcceptTerm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsAllowUse(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_allow_use"    # Z

    .prologue
    .line 554
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 555
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsAllowUse"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 556
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsAskUserEnterProfile(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isShow"    # Z

    .prologue
    .line 402
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 403
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsAskUserEnterProfile"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsAutoLoginFB(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "blnIsAutoLoginFB"    # Z

    .prologue
    .line 543
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 544
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsAutoLoginFB"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 545
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsFacebookUser(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isFbuser"    # Z

    .prologue
    .line 220
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsFbUser"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsHasNewVersion(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_has_new_version"    # Z

    .prologue
    .line 565
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 566
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsHasNewVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 567
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsNFCWarning(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isWarn"    # Z

    .prologue
    .line 275
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsNFCWarning"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsNotificationOn(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isOn"    # Z

    .prologue
    .line 264
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsNotificationOn"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsPlayingIntro(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_playing_intro"    # Z

    .prologue
    .line 61
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsPlayingIntro"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsPremium(Landroid/content/Context;Z)Z
    .registers 7
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_premium"    # Z

    .prologue
    .line 617
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v1

    .line 619
    .local v1, "oldValue":Z
    sget-object v3, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 620
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "IsPremium"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 621
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 623
    .local v2, "result":Z
    if-eq v1, p1, :cond_24

    .line 624
    const-string v3, "UserLogin"

    const-string v4, "PostEvents.onPremiumChanged();"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-static {}, Lcom/facebook/android/PostEvents;->onPremiumChanged()V

    .line 628
    :cond_24
    return v2
.end method

.method public static SetIsShowPointTransfer(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isShow"    # Z

    .prologue
    .line 391
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 392
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsShowPointTransfer"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 393
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsShowShoppingBasket(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_show_shopping_basket"    # Z

    .prologue
    .line 587
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 588
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsShowShoppingBasket"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 589
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsTokenNeedLogout(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_token_need_logout"    # Z

    .prologue
    .line 576
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 577
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsTokenNeedLogout"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 578
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsshowDialogHasNewVersion(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isShow"    # Z

    .prologue
    .line 253
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IsshowDialogHasNewVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLastName(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "lastname"    # Ljava/lang/String;

    .prologue
    .line 168
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LastName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 636
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 637
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CP_CODE"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 638
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "pmsg"    # Ljava/lang/String;

    .prologue
    .line 646
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 647
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CP_PMSG"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 648
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLastResumeTime(Landroid/content/Context;J)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pLastResumeTime"    # J

    .prologue
    .line 242
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 243
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LastResumeTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLastUpdateDevice(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LastUpdateDevice"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLocale(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 126
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Locale"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetMenuBuzzebeesVisible(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isVisible"    # Z

    .prologue
    .line 435
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 436
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "MenuBuzzebeesVisible"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 437
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetModeLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 106
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ModeLoginString"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetNotificationListAppend(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "noti"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetNotificationList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "oldNoti":Ljava/lang/String;
    const-string v0, ""

    .line 373
    .local v0, "appendNoti":Ljava/lang/String;
    if-eqz v2, :cond_3c

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%7C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_27
    sget-object v3, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 381
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "NotificationList"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    return v3

    .line 377
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3c
    move-object v0, p1

    goto :goto_27
.end method

.method public static SetNotificationUnReadCount(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "count"    # I

    .prologue
    .line 301
    if-gez p1, :cond_3

    .line 302
    const/4 p1, 0x0

    .line 305
    :cond_3
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "NotificationUnReadCount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetPoints(Landroid/content/Context;J)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "points"    # J

    .prologue
    .line 413
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 414
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Points"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetRank(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "rank"    # Ljava/lang/String;

    .prologue
    .line 424
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Rank"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetStickerOrder(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "sticker_order"    # Ljava/lang/String;

    .prologue
    .line 286
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sticker_order"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 464
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 465
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TokenBuzzeBees"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 466
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetTokenFacebook(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 532
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 533
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TokenFacebook"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 534
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 474
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 475
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "UserCarrier"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 476
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetUserId(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pStrUserId"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-object v1, Lcom/samsung/privilege/UserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "userId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method
