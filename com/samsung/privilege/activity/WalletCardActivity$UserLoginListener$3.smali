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
    .line 350
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->a:Ljava/lang/String;

    const-string/jumbo v1, "wallet_create"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 358
    :try_start_b
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v1, "doActivateCard"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    .line 363
    :cond_15
    :goto_15
    return-void

    .line 359
    :catch_16
    move-exception v0

    .line 360
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v2, 0x7f090375

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_15
.end method
