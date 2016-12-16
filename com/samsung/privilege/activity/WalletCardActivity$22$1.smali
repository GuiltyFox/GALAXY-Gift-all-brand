.class Lcom/samsung/privilege/activity/WalletCardActivity$22$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$22;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$22;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$22;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 1568
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1571
    :try_start_d
    new-instance v3, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->a:Ljava/lang/String;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_8c

    .line 1575
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1576
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1577
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1622
    :cond_60
    if-nez v0, :cond_76

    .line 1623
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1624
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1627
    :cond_76
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_284

    .line 1628
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 1639
    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    move v2, v0

    .line 1579
    :goto_8d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_60

    .line 1580
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1581
    const-string/jumbo v4, "issuer"

    invoke-static {v1, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1583
    iget-object v5, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v5, v5, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c2

    .line 1584
    const-string/jumbo v0, "cardId"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1585
    const-string/jumbo v0, "active"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1586
    const-string/jumbo v6, "amount"

    invoke-static {v1, v6}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v6

    .line 1587
    const-string/jumbo v8, "name"

    invoke-static {v1, v8}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1588
    const-string/jumbo v9, "description"

    invoke-static {v1, v9}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1591
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v8}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1592
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1593
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v9, "#,###,##0.00"

    invoke-direct {v1, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1594
    iget-object v9, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v9, v9, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v9}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v4, v1}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1596
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10a} :catch_259

    .line 1599
    if-ne v0, v10, :cond_1c2

    .line 1600
    :try_start_10c
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v4

    iget-object v4, v4, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/bzbs/data/UserLogin;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1601
    if-eqz v1, :cond_1c7

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c7

    .line 1602
    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v7, v7, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v8, 0x7f0903ad

    invoke-virtual {v7, v8}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v7, v7, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v8, 0x7f090389

    invoke-virtual {v7, v8}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1603
    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v7, v7, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v8, 0x7f0903ad

    invoke-virtual {v7, v8}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f090389

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1609
    :goto_1b1
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-boolean v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;->a:Z

    if-ne v1, v10, :cond_27b

    .line 1610
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->D:Landroid/widget/ScrollView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1579
    :cond_1c2
    :goto_1c2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_8d

    .line 1605
    :cond_1c7
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f0903ad

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " 0.00 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f090389

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1606
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f0903ad

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " 0.00 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f090389

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_235
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_235} :catch_237

    goto/16 :goto_1b1

    .line 1615
    :catch_237
    move-exception v1

    .line 1616
    :try_start_238
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ERROR:getWalletCardList:onSuccess:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_238 .. :try_end_257} :catch_259

    goto/16 :goto_1c2

    .line 1636
    :catch_259
    move-exception v0

    .line 1637
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

    goto/16 :goto_8b

    .line 1612
    :cond_27b
    :try_start_27b
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1, v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V
    :try_end_282
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_282} :catch_237

    goto/16 :goto_1c2

    .line 1629
    :cond_284
    :try_start_284
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_29b

    .line 1630
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto/16 :goto_8b

    .line 1631
    :cond_29b
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b2

    .line 1632
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto/16 :goto_8b

    .line 1633
    :cond_2b2
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8b

    .line 1634
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_2c7} :catch_259

    goto/16 :goto_8b
.end method
