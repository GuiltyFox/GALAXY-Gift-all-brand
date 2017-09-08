.class public Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$$ViewInjector;
.super Ljava/lang/Object;
.source "MarketPlaceListAdapter$ViewHolderList$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;Ljava/lang/Object;)V
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
    const v6, 0x7f1004de

    const v5, 0x7f1004b4

    const v4, 0x7f1004b3

    const v3, 0x7f1004b2

    const v2, 0x7f1004b1

    .line 11
    const-string/jumbo v0, "field \'imageViewCover\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string/jumbo v1, "field \'imageViewCover\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->imageViewCover:Landroid/widget/ImageView;

    .line 13
    const-string/jumbo v0, "field \'textViewTitle\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string/jumbo v1, "field \'textViewTitle\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewTitle:Landroid/widget/TextView;

    .line 15
    const-string/jumbo v0, "field \'textViewDiscount\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const-string/jumbo v1, "field \'textViewDiscount\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewDiscount:Landroid/widget/TextView;

    .line 17
    const v0, 0x7f1004e5

    const-string/jumbo v1, "field \'textViewType\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const v1, 0x7f1004e5

    const-string/jumbo v2, "field \'textViewType\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewType:Landroid/widget/TextView;

    .line 19
    const-string/jumbo v0, "field \'textViewPrice\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 20
    const-string/jumbo v1, "field \'textViewPrice\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewPrice:Landroid/widget/TextView;

    .line 21
    const-string/jumbo v0, "field \'textViewFullPrice\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    const-string/jumbo v1, "field \'textViewFullPrice\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewFullPrice:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f1004e3

    const-string/jumbo v1, "field \'textViewUsePoint\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 24
    const v1, 0x7f1004e3

    const-string/jumbo v2, "field \'textViewUsePoint\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewUsePoint:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f1004e6

    const-string/jumbo v1, "field \'textViewCart\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    const v1, 0x7f1004e6

    const-string/jumbo v2, "field \'textViewCart\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f1004e4

    const-string/jumbo v1, "field \'tvDetail\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    const v1, 0x7f1004e4

    const-string/jumbo v2, "field \'tvDetail\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->tvDetail:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f1004e2

    const-string/jumbo v1, "field \'contentImageView\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30
    const v1, 0x7f1004e2

    const-string/jumbo v2, "field \'contentImageView\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->contentImageView:Landroid/widget/RelativeLayout;

    .line 31
    const v0, 0x7f1004e0

    const-string/jumbo v1, "field \'contentItemList\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 32
    const v1, 0x7f1004e0

    const-string/jumbo v2, "field \'contentItemList\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->contentItemList:Landroid/widget/LinearLayout;

    .line 33
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->imageViewCover:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewTitle:Landroid/widget/TextView;

    .line 38
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewDiscount:Landroid/widget/TextView;

    .line 39
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewType:Landroid/widget/TextView;

    .line 40
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewPrice:Landroid/widget/TextView;

    .line 41
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewFullPrice:Landroid/widget/TextView;

    .line 42
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewUsePoint:Landroid/widget/TextView;

    .line 43
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    .line 44
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->tvDetail:Landroid/widget/TextView;

    .line 45
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->contentImageView:Landroid/widget/RelativeLayout;

    .line 46
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->contentItemList:Landroid/widget/LinearLayout;

    .line 47
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$$ViewInjector;->reset(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;)V

    return-void
.end method
