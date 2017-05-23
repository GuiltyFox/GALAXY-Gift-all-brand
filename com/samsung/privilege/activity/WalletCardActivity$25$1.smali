.class Lcom/samsung/privilege/activity/WalletCardActivity$25$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$25;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$25;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$25;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2036
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 2039
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2042
    :try_start_d
    new-instance v3, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->a:Ljava/lang/String;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2045
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_a4

    .line 2046
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2047
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2048
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 2049
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2105
    :cond_78
    if-nez v0, :cond_8e

    .line 2106
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->D:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2107
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->F:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2110
    :cond_8e
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2ae

    .line 2111
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 2122
    :cond_a3
    :goto_a3
    return-void

    :cond_a4
    move v2, v0

    .line 2051
    :goto_a5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_78

    .line 2052
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2053
    const-string/jumbo v4, "issuer"

    invoke-static {v1, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2055
    iget-object v5, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v5, v5, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ec

    .line 2056
    const-string/jumbo v0, "cardId"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2057
    const-string/jumbo v0, "active"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2058
    const-string/jumbo v6, "amount"

    invoke-static {v1, v6}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v6

    .line 2059
    const-string/jumbo v8, "name"

    invoke-static {v1, v8}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2060
    const-string/jumbo v9, "description"

    invoke-static {v1, v9}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 2061
    const-string/jumbo v9, "expire_date"

    invoke-static {v1, v9}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v10

    .line 2063
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v5}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2064
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v8}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2065
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 2066
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v9, "#,###,##0.00"

    invoke-direct {v1, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2067
    iget-object v9, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v9, v9, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v9}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v4, v1}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2069
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_134} :catch_283

    .line 2072
    if-ne v0, v12, :cond_1ec

    .line 2073
    :try_start_136
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v4

    iget-object v4, v4, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/bzbs/data/UserLogin;->x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2074
    if-eqz v1, :cond_1f1

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f1

    .line 2075
    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v7, v7, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v8, 0x7f0901d9

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

    iget-object v7, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v7, v7, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v8, 0x7f0901b1

    invoke-virtual {v7, v8}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2076
    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v7, v7, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v8, 0x7f0901d9

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

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f0901b1

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2082
    :goto_1db
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-boolean v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->b:Z

    if-ne v1, v12, :cond_2a5

    .line 2083
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->C:Landroid/widget/ScrollView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 2051
    :cond_1ec
    :goto_1ec
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_a5

    .line 2078
    :cond_1f1
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f0901d9

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " 0.00 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f0901b1

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2079
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f0901d9

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " 0.00 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f0901b1

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_25f
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_25f} :catch_261

    goto/16 :goto_1db

    .line 2088
    :catch_261
    move-exception v1

    .line 2089
    :try_start_262
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
    :try_end_281
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_281} :catch_283

    goto/16 :goto_1ec

    .line 2119
    :catch_283
    move-exception v0

    .line 2120
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

    goto/16 :goto_a3

    .line 2085
    :cond_2a5
    :try_start_2a5
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1, v5, v10, v11}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;J)V
    :try_end_2ac
    .catch Ljava/lang/Exception; {:try_start_2a5 .. :try_end_2ac} :catch_261

    goto/16 :goto_1ec

    .line 2112
    :cond_2ae
    :try_start_2ae
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2c5

    .line 2113
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto/16 :goto_a3

    .line 2114
    :cond_2c5
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2dc

    .line 2115
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto/16 :goto_a3

    .line 2116
    :cond_2dc
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a3

    .line 2117
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$25$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$25;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$25;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z
    :try_end_2f1
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_2f1} :catch_283

    goto/16 :goto_a3
.end method
