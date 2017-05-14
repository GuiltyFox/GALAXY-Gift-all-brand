.class Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->c(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 353
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->a:Ljava/lang/String;

    const-string/jumbo v1, "wallet_create"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 358
    :try_start_b
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v1, "doActivateCard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_41

    .line 364
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->a:Ljava/lang/String;

    const-string/jumbo v1, "wallet_verify_authen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 366
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_40
    return-void

    .line 359
    :catch_41
    move-exception v0

    .line 360
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v2, 0x7f0903b6

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_16
.end method
