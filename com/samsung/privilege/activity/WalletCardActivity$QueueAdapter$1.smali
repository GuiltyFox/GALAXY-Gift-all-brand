.class Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->a(Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/Place;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;Lcom/bzbs/bean/Place;)V
    .registers 3

    .prologue
    .line 3631
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;->a:Lcom/bzbs/bean/Place;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 3634
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;->a:Lcom/bzbs/bean/Place;

    iget-object v0, v0, Lcom/bzbs/bean/Place;->mQueueItem:Lcom/bzbs/bean/QueueItem;

    if-eqz v0, :cond_54

    .line 3635
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;->a:Lcom/bzbs/bean/Place;

    iget-object v0, v0, Lcom/bzbs/bean/Place;->mQueueItem:Lcom/bzbs/bean/QueueItem;

    iget-boolean v0, v0, Lcom/bzbs/bean/QueueItem;->Cancelled:Z

    if-nez v0, :cond_4a

    .line 3636
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;->a:Lcom/bzbs/bean/Place;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;->a:Lcom/bzbs/bean/Place;

    iget-object v2, v2, Lcom/bzbs/bean/Place;->mQueueItem:Lcom/bzbs/bean/QueueItem;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogQueue;->a(Landroid/content/Context;Lcom/bzbs/bean/Place;Lcom/bzbs/bean/QueueItem;)V

    .line 3644
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Queue"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;->a:Lcom/bzbs/bean/Place;

    iget-object v2, v2, Lcom/bzbs/bean/Place;->name:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 3645
    return-void

    .line 3638
    :cond_4a
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;->a:Lcom/bzbs/bean/Place;

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogQueue;->a(Landroid/content/Context;Lcom/bzbs/bean/Place;)V

    goto :goto_1b

    .line 3641
    :cond_54
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;->a:Lcom/bzbs/bean/Place;

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogQueue;->a(Landroid/content/Context;Lcom/bzbs/bean/Place;)V

    goto :goto_1b
.end method
