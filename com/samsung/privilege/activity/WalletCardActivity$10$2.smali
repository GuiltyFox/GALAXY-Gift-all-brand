.class Lcom/samsung/privilege/activity/WalletCardActivity$10$2;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$10;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$10;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$10;)V
    .registers 2

    .prologue
    .line 724
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$10$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .prologue
    .line 726
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 728
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$10$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$10;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$10;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v1, "doActivateCard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Z)V

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$10$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$10;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$10;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Yes"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$10$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$10;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$10;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 731
    return-void
.end method
