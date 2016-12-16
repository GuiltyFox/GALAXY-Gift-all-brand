.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4$2;
.super Ljava/lang/Object;
.source "DashboardGiftRecyclerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;)V
    .registers 2

    .prologue
    .line 503
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4$2;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4$2;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_b

    .line 512
    :goto_a
    return-void

    .line 510
    :cond_b
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4$2;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 511
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_a
.end method
