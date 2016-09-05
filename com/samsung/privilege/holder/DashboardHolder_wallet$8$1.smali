.class Lcom/samsung/privilege/holder/DashboardHolder_wallet$8$1;
.super Ljava/lang/Object;
.source "DashboardHolder_wallet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 738
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;

    iput-object p2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 740
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->m:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;

    iget-object v2, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V

    .line 743
    return-void
.end method
