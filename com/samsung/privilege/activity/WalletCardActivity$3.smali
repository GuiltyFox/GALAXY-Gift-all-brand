.class Lcom/samsung/privilege/activity/WalletCardActivity$3;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Lcom/bzbs/event/QueueEvents$QueueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity;->onResume()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 2

    .prologue
    .line 312
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$3;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bzbs/bean/QueueItem;)V
    .registers 4

    .prologue
    .line 315
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onQueueAdded"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$3;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;I)V

    .line 317
    return-void
.end method

.method public b(Lcom/bzbs/bean/QueueItem;)V
    .registers 4

    .prologue
    .line 321
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onQueueCancel"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$3;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;I)V

    .line 323
    return-void
.end method
