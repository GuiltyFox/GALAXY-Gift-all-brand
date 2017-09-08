.class Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/HistoryWallet;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;Lcom/bzbs/bean/HistoryWallet;)V
    .registers 3

    .prologue
    .line 2907
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;->a:Lcom/bzbs/bean/HistoryWallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 2910
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;->a:Lcom/bzbs/bean/HistoryWallet;

    iget v0, v0, Lcom/bzbs/bean/HistoryWallet;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 2924
    :cond_7
    :goto_7
    return-void

    .line 2913
    :cond_8
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;->a:Lcom/bzbs/bean/HistoryWallet;

    iget-object v0, v0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;->a:Lcom/bzbs/bean/HistoryWallet;

    iget-object v0, v0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2914
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2915
    const-string/jumbo v1, "Issuer"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;->a:Lcom/bzbs/bean/HistoryWallet;

    iget-object v2, v2, Lcom/bzbs/bean/HistoryWallet;->issuer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2916
    const-string/jumbo v1, "TransactionId"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;->a:Lcom/bzbs/bean/HistoryWallet;

    iget-object v2, v2, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2917
    const-string/jumbo v1, "Message"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;->a:Lcom/bzbs/bean/HistoryWallet;

    iget-object v2, v2, Lcom/bzbs/bean/HistoryWallet;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2918
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 2921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Refund Icon"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_7
.end method
