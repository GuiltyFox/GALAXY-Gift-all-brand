.class Lcom/samsung/privilege/activity/WalletCardActivity$5;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 410
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$5;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$5;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 412
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$5;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 414
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$5;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->U(Landroid/content/Context;)V

    .line 415
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$5;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    .line 417
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$5;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$5;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$5;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/facebook/CallbackManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wallet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$5;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v4

    iget-object v4, v4, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wallet_need_logout"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method
