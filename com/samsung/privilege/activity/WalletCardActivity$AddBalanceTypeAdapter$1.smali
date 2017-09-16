.class Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->a(Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/AddBalanceType;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;Lcom/bzbs/bean/AddBalanceType;)V
    .registers 3

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->a:Lcom/bzbs/bean/AddBalanceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->a:Lcom/bzbs/bean/AddBalanceType;

    iget-object v0, v0, Lcom/bzbs/bean/AddBalanceType;->id:Ljava/lang/String;

    const-string/jumbo v1, "cash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1615
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->p(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    .line 1627
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Click "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->a:Lcom/bzbs/bean/AddBalanceType;

    iget-object v2, v2, Lcom/bzbs/bean/AddBalanceType;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->a:Lcom/bzbs/bean/AddBalanceType;

    iget-object v3, v3, Lcom/bzbs/bean/AddBalanceType;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;

    iget-object v3, v3, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v3

    iget-object v3, v3, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1628
    return-void

    .line 1617
    :cond_7a
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1618
    const-string/jumbo v1, "issuer"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1619
    const-string/jumbo v1, "cardId"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1620
    const-string/jumbo v1, "channel"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->a:Lcom/bzbs/bean/AddBalanceType;

    iget-object v2, v2, Lcom/bzbs/bean/AddBalanceType;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1621
    const-string/jumbo v1, "label"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->a:Lcom/bzbs/bean/AddBalanceType;

    iget-object v2, v2, Lcom/bzbs/bean/AddBalanceType;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    const-string/jumbo v1, "icon"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->a:Lcom/bzbs/bean/AddBalanceType;

    iget-object v2, v2, Lcom/bzbs/bean/AddBalanceType;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1623
    const-string/jumbo v1, "list_config"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->a:Lcom/bzbs/bean/AddBalanceType;

    iget-object v2, v2, Lcom/bzbs/bean/AddBalanceType;->list:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_14
.end method
