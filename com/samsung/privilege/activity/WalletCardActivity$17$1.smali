.class Lcom/samsung/privilege/activity/WalletCardActivity$17$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$17;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$17;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$17;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$17$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$17;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$17$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1541
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$17$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "topupconfig_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$17$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$17;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$17;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1543
    invoke-static {v0}, Lcom/bzbs/bean/AddBalanceType;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1545
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$17$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$17;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$17;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$17$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$17;

    iget-object v3, v3, Lcom/samsung/privilege/activity/WalletCardActivity$17;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {v2, v3, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;)Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;

    .line 1546
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$17$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$17;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$17;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->n(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$17$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$17;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$17;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->m(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1547
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$17$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$17;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$17;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->J:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1549
    const-string/jumbo v0, "cache_wallet_add_balance"

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$17$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$17;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$17;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 1550
    const-string/jumbo v0, "cache_wallet_add_balance"

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$17$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$17$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$17;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$17;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_79

    .line 1554
    :goto_78
    return-void

    .line 1551
    :catch_79
    move-exception v0

    .line 1552
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(getWalletAddBalanceData|Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78
.end method
