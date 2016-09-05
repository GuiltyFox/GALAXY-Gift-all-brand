.class Lcom/samsung/privilege/activity/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/LoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/privilege/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 429
    iput-object p1, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 433
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 434
    const-string/jumbo v0, "token"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    const-string/jumbo v2, "version"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    const-string/jumbo v3, "logon_message_id"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 437
    const-string/jumbo v4, "logon_message"

    invoke-static {v1, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 439
    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 440
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Ljava/lang/String;)Z

    .line 442
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v5, "locale"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 443
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v5, "userId"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 445
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v5, "isPremiumUser"

    invoke-static {v1, v5}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;Z)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_73} :catch_1df

    .line 448
    :try_start_73
    const-string/jumbo v0, "detail"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_1e9

    .line 450
    const-string/jumbo v0, "ewallet_token"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_1b4

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b4

    .line 452
    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_97} :catch_1c9

    .line 463
    :goto_97
    :try_start_97
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "768830479847872"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 464
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v5, "1108"

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 472
    :cond_b6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_bd} :catch_1df

    .line 475
    :try_start_bd
    const-string/jumbo v0, "sponsor_pages"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c6} :catch_1fe

    .line 481
    :goto_c6
    :try_start_c6
    const-string/jumbo v0, "updated_points"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 482
    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "points"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;J)Z
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_dd} :catch_222

    .line 486
    :goto_dd
    :try_start_dd
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updated_points="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_104} :catch_1df

    .line 489
    :try_start_104
    const-string/jumbo v0, "user_rank"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 490
    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "rank"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_11b} :catch_230

    .line 495
    :goto_11b
    :try_start_11b
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->A(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_138

    .line 496
    new-instance v0, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v5, "term"

    invoke-direct {v0, v5}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 497
    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V

    .line 500
    :cond_138
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15f

    .line 501
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->i(Landroid/content/Context;Z)Z

    .line 503
    new-instance v0, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v5, "welcome"

    invoke-direct {v0, v5}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 504
    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_15f} :catch_1df

    .line 508
    :cond_15f
    :try_start_15f
    const-string/jumbo v0, "buzzebees"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 510
    const-string/jumbo v5, "points"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 512
    if-lez v5, :cond_187

    .line 513
    new-instance v6, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v7, "point"

    invoke-direct {v6, v7}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 514
    const-string/jumbo v7, "weeklytopup"

    iput-object v7, v6, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    .line 515
    iput v5, v6, Lcom/bzbs/bean/MessagePopup;->point_number:I

    .line 517
    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V

    .line 520
    :cond_187
    const-string/jumbo v5, "badges"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 521
    const/4 v0, 0x0

    :goto_18f
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_276

    .line 522
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 523
    new-instance v7, Lcom/bzbs/bean/BadgeAlert;

    invoke-direct {v7, v6}, Lcom/bzbs/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 525
    new-instance v6, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v8, "badge"

    invoke-direct {v6, v8}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 526
    iput-object v7, v6, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    .line 529
    iget-object v7, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v7}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_1b1} :catch_254

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_18f

    .line 454
    :cond_1b4
    :try_start_1b4
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1c7} :catch_1c9

    goto/16 :goto_97

    .line 459
    :catch_1c9
    move-exception v0

    .line 460
    :try_start_1ca
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1dd} :catch_1df

    goto/16 :goto_97

    .line 560
    :catch_1df
    move-exception v0

    .line 561
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    const-string/jumbo v1, "Authentication with BuzzeBees Fail...\r\n{Invalid data format}..."

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;)V

    .line 563
    :goto_1e8
    return-void

    .line 457
    :cond_1e9
    :try_start_1e9
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_1fc} :catch_1c9

    goto/16 :goto_97

    .line 476
    :catch_1fe
    move-exception v0

    .line 477
    :try_start_1ff
    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t get sponsor data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c6

    .line 483
    :catch_222
    move-exception v0

    .line 484
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;J)Z

    goto/16 :goto_dd

    .line 491
    :catch_230
    move-exception v0

    .line 492
    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t get user_rank data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11b

    .line 531
    :catch_254
    move-exception v0

    .line 532
    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Not found buzzebees data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_276
    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b1

    .line 549
    :goto_27f
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 551
    if-eqz v4, :cond_2aa

    const-string/jumbo v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2aa

    .line 552
    new-instance v0, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v1, "message"

    invoke-direct {v0, v1}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 553
    iput-object v3, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 554
    iput-object v4, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    .line 556
    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V

    .line 559
    :cond_2aa
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/LoginActivity;->c(Lcom/samsung/privilege/activity/LoginActivity;)V

    goto/16 :goto_1e8

    .line 538
    :cond_2b1
    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 539
    const-string/jumbo v1, "menu_buzzebees_visible"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 540
    iget-object v2, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Z)Z

    .line 542
    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "allow_use"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Z)Z

    .line 543
    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "has_new_version"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->l(Landroid/content/Context;Z)Z

    .line 544
    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "token_need_logout"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Z)Z

    .line 546
    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->c:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "is_show_shopping_basket_button_on_marketplace_buzzebees"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Z)Z
    :try_end_31c
    .catch Ljava/lang/Exception; {:try_start_1ff .. :try_end_31c} :catch_1df

    goto/16 :goto_27f
.end method
