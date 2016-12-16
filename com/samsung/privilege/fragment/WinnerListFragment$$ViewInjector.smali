.class public Lcom/samsung/privilege/fragment/WinnerListFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "WinnerListFragment$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/privilege/fragment/WinnerListFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$Injector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/samsung/privilege/fragment/WinnerListFragment;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const v3, 0x7f100695

    const v2, 0x7f100642

    .line 11
    const-string/jumbo v0, "field \'recyclerView\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string/jumbo v1, "field \'recyclerView\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/WinnerListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 13
    const-string/jumbo v0, "field \'mSwipeRefreshLayout\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string/jumbo v1, "field \'mSwipeRefreshLayout\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/WinnerListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 15
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/samsung/privilege/fragment/WinnerListFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/WinnerListFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/samsung/privilege/fragment/WinnerListFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/samsung/privilege/fragment/WinnerListFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 18
    iput-object v0, p1, Lcom/samsung/privilege/fragment/WinnerListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 19
    iput-object v0, p1, Lcom/samsung/privilege/fragment/WinnerListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 20
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/samsung/privilege/fragment/WinnerListFragment;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/fragment/WinnerListFragment$$ViewInjector;->reset(Lcom/samsung/privilege/fragment/WinnerListFragment;)V

    return-void
.end method
