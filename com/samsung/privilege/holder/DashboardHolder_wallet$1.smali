.class final Lcom/samsung/privilege/holder/DashboardHolder_wallet$1;
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


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/samsung/privilege/holder/DashboardHolder_wallet;)V
    .registers 3

    .prologue
    .line 230
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$1;->a:Landroid/app/Activity;

    const-class v2, Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const-string/jumbo v1, "cardId"

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v2, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->w:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$1;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method
