.class Lcom/samsung/privilege/holder/DashboardHolder_wallet$9$1;
.super Ljava/lang/Object;
.source "DashboardHolder_wallet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 853
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;

    iput-object p2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 855
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->n:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 858
    :try_start_b
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bzbs/bean/HistoryWallet;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 860
    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/util/ArrayList;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_1e

    .line 864
    :goto_1d
    return-void

    .line 861
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method
