.class Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;
.super Ljava/lang/Object;
.source "HistoryEWalletListActivity.java"

# interfaces
.implements Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->bindingEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 151
    :try_start_0
    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 152
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_20

    .line 153
    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    const v5, 0x7f09024a

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1f
    :goto_1f
    return-void

    .line 157
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_20
    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mHistoryAdapter:Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;
    invoke-static {v3}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->access$700(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->getItem(I)Lcom/bzbs/bean/HistoryWallet;

    move-result-object v2

    .line 159
    .local v2, "objHistoryWallet":Lcom/bzbs/bean/HistoryWallet;
    iget-object v3, v2, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    if-eqz v3, :cond_1f

    iget-object v3, v2, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 160
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "Issuer"

    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "Issuer"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string/jumbo v3, "TransactionId"

    iget-object v4, v2, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v3, "Message"

    iget-object v4, v2, Lcom/bzbs/bean/HistoryWallet;->message:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-virtual {v3, v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wallet History "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "Issuer"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Click Wallet Transaction"

    invoke-static {v3, v4}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_95} :catch_96

    goto :goto_1f

    .line 168
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "objHistoryWallet":Lcom/bzbs/bean/HistoryWallet;
    :catch_96
    move-exception v3

    goto :goto_1f
.end method
