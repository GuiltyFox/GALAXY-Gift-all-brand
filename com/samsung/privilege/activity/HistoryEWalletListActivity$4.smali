.class Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;
.super Ljava/lang/Object;
.source "HistoryEWalletListActivity.java"

# interfaces
.implements Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 8

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 152
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_20

    .line 153
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    const v2, 0x7f090252

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    :cond_1f
    :goto_1f
    return-void

    .line 157
    :cond_20
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->g(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->a(I)Lcom/bzbs/bean/HistoryWallet;

    move-result-object v0

    .line 159
    iget-object v1, v0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 160
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    const-string/jumbo v2, "Issuer"

    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "Issuer"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string/jumbo v2, "TransactionId"

    iget-object v3, v0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v2, "Message"

    iget-object v0, v0, Lcom/bzbs/bean/HistoryWallet;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet History "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "Issuer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Wallet Transaction"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_95} :catch_96

    goto :goto_1f

    .line 168
    :catch_96
    move-exception v0

    goto :goto_1f
.end method
