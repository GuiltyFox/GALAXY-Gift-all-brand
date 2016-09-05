.class Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$2;
.super Ljava/lang/Object;
.source "DashboardHolder_wallet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 536
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;

    iput-object p2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    .prologue
    .line 538
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 540
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;

    iget-object v2, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->d:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$2;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;

    iget-object v4, v4, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Active Wallet"

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;

    iget-object v2, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method
