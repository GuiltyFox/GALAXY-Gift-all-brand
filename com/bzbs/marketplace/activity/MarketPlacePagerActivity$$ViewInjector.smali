.class public Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$$ViewInjector;
.super Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;
.source "MarketPlacePagerActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;",
        ">",
        "Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;Ljava/lang/Object;)V
    .registers 7
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
    const v2, 0x7f100192

    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Ljava/lang/Object;)V

    .line 12
    const-string/jumbo v0, "field \'vpMain\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 13
    const-string/jumbo v1, "field \'vpMain\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    .line 14
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 7
    check-cast p2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 7
    check-cast p2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;->reset(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    .line 20
    return-void
.end method

.method public bridge synthetic reset(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V
    .registers 2

    .prologue
    .line 7
    check-cast p1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$$ViewInjector;->reset(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 7
    check-cast p1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$$ViewInjector;->reset(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    return-void
.end method
