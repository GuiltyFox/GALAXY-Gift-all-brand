.class Lcom/samsung/privilege/activity/WalletCardActivity$29$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$29;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$29;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$29;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2370
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$29;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->p:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2375
    const/4 v0, 0x0

    .line 2377
    :try_start_c
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bzbs/bean/Place;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2380
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$29;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->q(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2381
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$29;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->q(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->a(Ljava/util/List;)V

    .line 2382
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$29;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->q(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->notifyDataSetChanged()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3a} :catch_ae

    .line 2392
    :goto_3a
    if-eqz v0, :cond_9c

    :try_start_3c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz v0, :cond_9c

    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$29;->b:I

    if-nez v0, :cond_9c

    .line 2393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_wallet_queue_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$29;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$29;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 2394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_wallet_queue_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$29;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$29;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_9c} :catch_ac

    .line 2400
    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$29;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z

    .line 2402
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$29;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->s(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    .line 2403
    return-void

    .line 2396
    :catch_ac
    move-exception v0

    goto :goto_9c

    .line 2387
    :catch_ae
    move-exception v1

    goto :goto_3a
.end method
