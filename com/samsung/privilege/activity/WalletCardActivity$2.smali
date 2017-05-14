.class Lcom/samsung/privilege/activity/WalletCardActivity$2;
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
    .line 281
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bzbs/bean/QueueItem;)V
    .registers 4

    .prologue
    .line 284
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onQueueAdded"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;I)V

    .line 286
    return-void
.end method

.method public b(Lcom/bzbs/bean/QueueItem;)V
    .registers 4

    .prologue
    .line 290
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onQueueCancel"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;I)V

    .line 292
    return-void
.end method
