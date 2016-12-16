.class Lcom/samsung/privilege/activity/WalletCardActivity$2$3;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$2;->c(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$2;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$2;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 295
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$2$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$2;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$2$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 298
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$2$3;->a:Ljava/lang/String;

    const-string/jumbo v1, "wallet_create"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 302
    :try_start_b
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$2$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$2;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v1, "doActivateCard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_17

    .line 307
    :cond_16
    :goto_16
    return-void

    .line 303
    :catch_17
    move-exception v0

    .line 304
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$2$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$2;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$2$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$2;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v2, 0x7f090399

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_16
.end method
