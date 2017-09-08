.class Lcom/samsung/privilege/activity/WalletCardActivity$28$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$28;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$28;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$28;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2390
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2393
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2396
    :try_start_d
    new-instance v5, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->a:Ljava/lang/String;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2399
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_a5

    .line 2400
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v3}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2401
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v3}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2402
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 2403
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v3}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v2

    .line 2466
    :cond_79
    if-nez v0, :cond_8f

    .line 2467
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2468
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2471
    :cond_8f
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_29f

    .line 2472
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 2483
    :cond_a4
    :goto_a4
    return-void

    :cond_a5
    move v4, v2

    move v0, v2

    .line 2405
    :goto_a7
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_79

    .line 2406
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2407
    const-string/jumbo v6, "issuer"

    invoke-static {v1, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2409
    iget-object v7, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v7, v7, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v7

    iget-object v7, v7, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ea

    .line 2410
    const-string/jumbo v0, "cardId"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2411
    const-string/jumbo v0, "active"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2412
    const-string/jumbo v0, "amount"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v8

    .line 2413
    const-string/jumbo v0, "name"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2414
    const-string/jumbo v0, "description"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 2415
    const-string/jumbo v0, "expire_date"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v12

    .line 2418
    if-eqz v7, :cond_1ef

    const-string/jumbo v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ef

    move v0, v3

    .line 2424
    :goto_100
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, v7}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2425
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, v10}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2426
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 2427
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v11, "#,###,##0.00"

    invoke-direct {v1, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2428
    iget-object v11, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v11, v11, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v6, v1}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2430
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_141} :catch_274

    .line 2433
    if-ne v0, v3, :cond_1ea

    .line 2434
    :try_start_143
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v6

    iget-object v6, v6, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/bzbs/data/UserLogin;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2435
    if-eqz v1, :cond_1f2

    const-string/jumbo v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f2

    .line 2436
    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v9, v9, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v10, 0x7f0901c2

    invoke-virtual {v9, v10}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2437
    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v9, v9, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v10, 0x7f0901ec

    invoke-virtual {v9, v10}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v8, v8, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v9, 0x7f0901c2

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2443
    :goto_1d9
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-boolean v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->b:Z

    if-ne v1, v3, :cond_296

    .line 2444
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->F:Landroid/widget/ScrollView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 2405
    :cond_1ea
    :goto_1ea
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_a7

    :cond_1ef
    move v0, v2

    .line 2421
    goto/16 :goto_100

    .line 2439
    :cond_1f2
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "0.00 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v8, v8, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v9, 0x7f0901c2

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2440
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v8, v8, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v9, 0x7f0901ec

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " 0.00 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v8, v8, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v9, 0x7f0901c2

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_251
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_251} :catch_252

    goto :goto_1d9

    .line 2449
    :catch_252
    move-exception v1

    .line 2450
    :try_start_253
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ERROR:getWalletCardList:onSuccess:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_272
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_272} :catch_274

    goto/16 :goto_1ea

    .line 2480
    :catch_274
    move-exception v0

    .line 2481
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(getWalletCardList|Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a4

    .line 2446
    :cond_296
    :try_start_296
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1, v7, v12, v13}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;J)V
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_296 .. :try_end_29d} :catch_252

    goto/16 :goto_1ea

    .line 2473
    :cond_29f
    :try_start_29f
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b6

    .line 2474
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto/16 :goto_a4

    .line 2475
    :cond_2b6
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2cd

    .line 2476
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto/16 :goto_a4

    .line 2477
    :cond_2cd
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a4

    .line 2478
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z
    :try_end_2e2
    .catch Ljava/lang/Exception; {:try_start_29f .. :try_end_2e2} :catch_274

    goto/16 :goto_a4
.end method
