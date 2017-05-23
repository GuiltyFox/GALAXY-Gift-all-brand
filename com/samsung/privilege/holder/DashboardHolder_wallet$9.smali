.class final Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DashboardHolder_wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

.field final synthetic c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/samsung/privilege/holder/DashboardHolder_wallet;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 846
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iput-object p3, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iput-object p4, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 876
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;->a:Landroid/app/Activity;

    if-nez v0, :cond_8

    .line 889
    :goto_7
    return-void

    .line 882
    :cond_8
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;->a:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9$2;-><init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_7
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 849
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;->a:Landroid/app/Activity;

    if-nez v0, :cond_5

    .line 872
    :cond_4
    :goto_4
    return-void

    .line 851
    :cond_5
    invoke-static {}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(wallet_history|onComplete)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;->a:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9$1;-><init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 867
    const-string/jumbo v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dashboard_wallet_history_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;->a:Landroid/app/Activity;

    invoke-static {v0, p4, v1}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_4
.end method
