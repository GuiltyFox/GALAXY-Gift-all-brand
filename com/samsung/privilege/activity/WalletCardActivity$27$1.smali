.class Lcom/samsung/privilege/activity/WalletCardActivity$27$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$27;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$27;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$27;)V
    .registers 2

    .prologue
    .line 2288
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$27$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2291
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$27$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$27;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$27;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v1, 0x7f1001f0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/View;->scrollTo(II)V

    .line 2293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_wallet_queue_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$27$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$27;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$27;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$27$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$27;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$27;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->c(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 2294
    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_46

    .line 2295
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$27$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$27;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$27;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0, v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;I)V

    .line 2297
    :cond_46
    return-void
.end method
