.class public Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$$ViewInjector;
.super Ljava/lang/Object;
.source "ViewHolderCategoryCampaign$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;Ljava/lang/Object;)V
    .registers 11
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
    const v6, 0x7f10065b

    const v5, 0x7f10065a

    const v4, 0x7f100659

    const v3, 0x7f100658

    const v2, 0x7f10018e

    .line 11
    const-string/jumbo v0, "field \'recyclerViewMarketPlaceList\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string/jumbo v1, "field \'recyclerViewMarketPlaceList\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    .line 13
    const-string/jumbo v0, "field \'rootFooter\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string/jumbo v1, "field \'rootFooter\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->rootFooter:Landroid/widget/LinearLayout;

    .line 15
    const-string/jumbo v0, "field \'tvResult\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const-string/jumbo v1, "field \'tvResult\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->tvResult:Landroid/widget/TextView;

    .line 17
    const-string/jumbo v0, "field \'expandedImage\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const-string/jumbo v1, "field \'expandedImage\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->expandedImage:Landroid/widget/ImageView;

    .line 19
    const-string/jumbo v0, "field \'container\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 20
    const-string/jumbo v1, "field \'container\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->container:Landroid/widget/RelativeLayout;

    .line 21
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    .line 25
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->rootFooter:Landroid/widget/LinearLayout;

    .line 26
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->tvResult:Landroid/widget/TextView;

    .line 27
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->expandedImage:Landroid/widget/ImageView;

    .line 28
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->container:Landroid/widget/RelativeLayout;

    .line 29
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$$ViewInjector;->reset(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)V

    return-void
.end method
