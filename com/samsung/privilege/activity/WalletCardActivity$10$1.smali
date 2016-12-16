.class Lcom/samsung/privilege/activity/WalletCardActivity$10$1;
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
    .line 732
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$10$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .prologue
    .line 734
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$10$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$10;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$10;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click No"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$10$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$10;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$10;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 737
    return-void
.end method
