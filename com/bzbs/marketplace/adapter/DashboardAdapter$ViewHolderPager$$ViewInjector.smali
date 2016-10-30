.class public Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager$$ViewInjector;
.super Ljava/lang/Object;
.source "DashboardAdapter$ViewHolderPager$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;Ljava/lang/Object;)V
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
    const v3, 0x7f100626

    const v2, 0x7f10025b

    .line 11
    const-string/jumbo v0, "field \'viewPager\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string/jumbo v1, "field \'viewPager\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 13
    const-string/jumbo v0, "field \'pagerContainer\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string/jumbo v1, "field \'pagerContainer\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/control/viewpager/PagerContainer;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;->pagerContainer:Lcom/bzbs/marketplace/control/viewpager/PagerContainer;

    .line 15
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 18
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 19
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;->pagerContainer:Lcom/bzbs/marketplace/control/viewpager/PagerContainer;

    .line 20
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager$$ViewInjector;->reset(Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;)V

    return-void
.end method
