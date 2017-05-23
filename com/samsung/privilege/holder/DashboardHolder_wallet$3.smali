.class final Lcom/samsung/privilege/holder/DashboardHolder_wallet$3;
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

.field final synthetic b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

.field final synthetic c:Lcom/samsung/privilege/holder/DashboardHolder_wallet;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;)V
    .registers 4

    .prologue
    .line 491
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$3;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$3;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iput-object p3, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$3;->c:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 494
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$3;->a:Landroid/app/Activity;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "campaign_gift_mygift"

    iget-object v3, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$3;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v4, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$3;->c:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;Z)V

    .line 495
    return-void
.end method
