.class final Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;
.super Ljava/lang/Object;
.source "DashboardHolder_wallet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

.field final synthetic c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bzbs/bean/DashboardItem;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/samsung/privilege/holder/DashboardHolder_wallet;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V
    .registers 6

    .prologue
    .line 498
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iput-object p3, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iput-object p4, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;->e:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 501
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_15

    .line 502
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;->a:Landroid/app/Activity;

    const v2, 0x7f090067

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 517
    :cond_14
    :goto_14
    return-void

    .line 504
    :cond_15
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_14

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 512
    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v3, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Wallet History"

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;->e:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method
