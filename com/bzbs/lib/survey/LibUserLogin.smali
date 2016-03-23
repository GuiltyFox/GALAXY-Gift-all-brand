.class public Lcom/bzbs/lib/survey/LibUserLogin;
.super Ljava/lang/Object;
.source "LibUserLogin.java"


# static fields
.field public static ID_ADMIN:Ljava/lang/String;

.field public static PREF_KEY_NOTCLEAR:Ljava/lang/String;

.field public static PREF_KEY_USERLOGIN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-string/jumbo v0, "LibUserLogin"

    sput-object v0, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "KeyNotClear"

    sput-object v0, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "(vee.vin.12){100006407738570},(Mew Jaa){100006291181618},(Varin Singh){1751247024},(miewdivasang){1084857009},(Ann Sopawan){1495332876},(MaleePrincess Pattama){682916828},(Pat PK){100001080248961},(Pongsak Meedanpai){100000537824053},(Tavatchai Chalaem){100000595721795},(AobBee Ba){100003939262095},(Dev Suwit){100003763346702},(Aob Zaa){1270290084},(Ba Be Boon){100000457725713},(Bajarabhat Boonsukkerd){100003907882009},(IBaas Yo FuNe){1073075453},(BaasCartel Dna){100000205187418},(Mininoon Minipenguin){100000458053838},(Michael Chen){713132344},(Tow Said){552554091},(Isis Scrubb){100004734994762},(Lee Tok Yo){100003809100483},(Iconcepts Iconcepts){100004925317433},(Kratai Lerdsurasakda){534115150}"

    sput-object v0, Lcom/bzbs/lib/survey/LibUserLogin;->ID_ADMIN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 181
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 182
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "Address"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetAppId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 72
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "AppId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetFacebookName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 151
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "FacebookName"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 141
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "FacebookUID"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetFirstName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 161
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 162
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "FirstName"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 229
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "GCM_ID"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetIsNotificationOn(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 239
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 240
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsNotificationOn"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsPlayMarketBzBsTutorial(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 25
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsPlayMarketBzBsTutorial"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsShowConditionInMarket(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 270
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 271
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsShowConditionInMarket"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static GetIsShowShoppingBasket(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 290
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 291
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsShowShoppingBasket"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static GetIsShowUseDialogInMarket(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 280
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 281
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IsShowUseDialogInMarket"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static GetKeyboardHeight(Landroid/content/Context;)I
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 307
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 308
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "KeyboardHeight"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static GetLastName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 171
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 172
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "LastName"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetLastResumeTime(Landroid/content/Context;)J
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 318
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "LastResumeTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static GetLocale(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 199
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 200
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "Locale"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetModeLogin(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ModeLoginString"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetPoints(Landroid/content/Context;)J
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 219
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 220
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "Points"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static GetProfileImage(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 301
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 302
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "strDate":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/profile/me/picture/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "TokenBuzzeBees"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 114
    invoke-static {p0}, Lcom/bzbs/lib/survey/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "token":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "token_1_digit_frist":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "token_5_digit_last":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "token_cut_1_digit_and_5_digit_last":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 121
    .local v4, "token_for_buy":Ljava/lang/String;
    const-string/jumbo v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    :goto_3f
    return-object v4

    .line 124
    :cond_40
    move-object v4, v0

    goto :goto_3f
.end method

.method public static GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 131
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "TokenFacebook"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetUserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 82
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "userId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static Get_can_buy_point(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 209
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "can_buy_point"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static Get_logic_facebook_photo_url(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 260
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 261
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "logic_facebook_photo_url"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static IS_ADMIN(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 17
    sget-object v0, Lcom/bzbs/lib/survey/LibUserLogin;->ID_ADMIN:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bzbs/lib/survey/LibUserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 18
    const/4 v0, 0x1

    .line 20
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static IsHasAddress(Landroid/content/Context;)Z
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 190
    invoke-static {p0}, Lcom/bzbs/lib/survey/LibUserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "strAddress":Ljava/lang/String;
    if-eqz v0, :cond_11

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 192
    const/4 v1, 0x1

    .line 194
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static Logout(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 324
    return-void
.end method

.method public static SetAddress(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "Address"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetAppId(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "AppId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetFacebookName(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "FacebookName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetFacebookUID(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 145
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "FacebookUID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetFirstName(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 165
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "FirstName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetGCM_ID(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "gcm_id"    # Ljava/lang/String;

    .prologue
    .line 233
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 234
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "GCM_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsNotificationOn(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isOn"    # Z

    .prologue
    .line 243
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 244
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsNotificationOn"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsPlayMarketBzBsTutorial(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pIsPlayMarketBzBsTutorial"    # Z

    .prologue
    .line 30
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_NOTCLEAR:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 31
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsPlayMarketBzBsTutorial"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsShowConditionInMarket(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isShow"    # Z

    .prologue
    .line 274
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 275
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsShowConditionInMarket"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsShowShoppingBasket(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_show_shopping_basket"    # Z

    .prologue
    .line 295
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 296
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsShowShoppingBasket"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetIsShowUseDialogInMarket(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isShow"    # Z

    .prologue
    .line 284
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsShowUseDialogInMarket"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetKeyboardHeight(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "height"    # I

    .prologue
    .line 312
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 313
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "KeyboardHeight"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLastName(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "LastName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLastResumeTime(Landroid/content/Context;J)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pLastResumeTime"    # J

    .prologue
    .line 249
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "LastResumeTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetLocale(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 203
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "Locale"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetModeLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "ModeLoginString"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetPoints(Landroid/content/Context;J)Z
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "points"    # J

    .prologue
    .line 223
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 224
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "Points"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "TokenBuzzeBees"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetTokenFacebook(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "TokenFacebook"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static SetUserId(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pStrUserId"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "userId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static Set_can_buy_point(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 213
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 214
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "can_buy_point"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static Set_july_2013_breaking_changes(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "is_enable"    # Z

    .prologue
    .line 254
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "july_2013_breaking_changes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static Set_logic_facebook_photo_url(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "logic"    # Ljava/lang/String;

    .prologue
    .line 264
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "logic_facebook_photo_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static getCampaignTrueWallet(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "CampaignTrueWallet"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUserLevel(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "UserLevel"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasShowDialogGPS(Landroid/content/Context;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 103
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "showDialogGPS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static setCampaignTrueWallet(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "userLevel"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "CampaignTrueWallet"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static setShowDialogGPS(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "isOn"    # Z

    .prologue
    .line 108
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "showDialogGPS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static setUserLevel(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "userLevel"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-object v1, Lcom/bzbs/lib/survey/LibUserLogin;->PREF_KEY_USERLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "UserLevel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method
