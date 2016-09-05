.class public Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector;
.super Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;
.source "MarketPlaceDetailFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;",
        ">",
        "Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 7
    check-cast p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;Ljava/lang/Object;)V
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
    const v6, 0x7f100634

    const v5, 0x7f100633

    const v4, 0x7f100632

    const v3, 0x7f100631

    const v2, 0x7f100630

    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Ljava/lang/Object;)V

    .line 12
    const-string/jumbo v0, "field \'textViewDiscount\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 13
    const-string/jumbo v1, "field \'textViewDiscount\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDiscount:Landroid/widget/TextView;

    .line 14
    const-string/jumbo v0, "field \'textViewFullPrice\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 15
    const-string/jumbo v1, "field \'textViewFullPrice\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewFullPrice:Landroid/widget/TextView;

    .line 16
    const-string/jumbo v0, "field \'textViewPrice\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 17
    const-string/jumbo v1, "field \'textViewPrice\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPrice:Landroid/widget/TextView;

    .line 18
    const-string/jumbo v0, "field \'textViewPoint\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 19
    const-string/jumbo v1, "field \'textViewPoint\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPoint:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f100635

    const-string/jumbo v1, "field \'textViewTimeLeft\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 21
    const v1, 0x7f100635

    const-string/jumbo v2, "field \'textViewTimeLeft\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewTimeLeft:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f10064b

    const-string/jumbo v1, "field \'textViewDetailShopTel\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 23
    const v1, 0x7f10064b

    const-string/jumbo v2, "field \'textViewDetailShopTel\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopTel:Landroid/widget/TextView;

    .line 24
    const-string/jumbo v0, "field \'txtHeaderPoint\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 25
    const-string/jumbo v1, "field \'txtHeaderPoint\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->txtHeaderPoint:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f10064c

    const-string/jumbo v1, "field \'textViewDetailShopAddress\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 27
    const v1, 0x7f10064c

    const-string/jumbo v2, "field \'textViewDetailShopAddress\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopAddress:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f10064d

    const-string/jumbo v1, "field \'textViewDetailShopWebsite\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 29
    const v1, 0x7f10064d

    const-string/jumbo v2, "field \'textViewDetailShopWebsite\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopWebsite:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f10064a

    const-string/jumbo v1, "field \'textViewDetailShopDelivered\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 31
    const v1, 0x7f10064a

    const-string/jumbo v2, "field \'textViewDetailShopDelivered\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopDelivered:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f100636

    const-string/jumbo v1, "field \'contentInput\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 33
    const v1, 0x7f100636

    const-string/jumbo v2, "field \'contentInput\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentInput:Landroid/support/v7/widget/CardView;

    .line 34
    const v0, 0x7f10064f

    const-string/jumbo v1, "field \'btnSubmit\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 35
    const v1, 0x7f10064f

    const-string/jumbo v2, "field \'btnSubmit\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f100650

    const-string/jumbo v1, "field \'btnError\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 37
    const v1, 0x7f100650

    const-string/jumbo v2, "field \'btnError\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f10064e

    const-string/jumbo v1, "field \'contentSubmit\' and method \'onSubmit\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 39
    const v1, 0x7f10064e

    const-string/jumbo v2, "field \'contentSubmit\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentSubmit:Landroid/widget/RelativeLayout;

    .line 40
    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f10063d

    const-string/jumbo v1, "field \'textPointNeed\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 49
    const v1, 0x7f10063d

    const-string/jumbo v2, "field \'textPointNeed\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointNeed:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f10063e

    const-string/jumbo v1, "field \'textPointPackage\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 51
    const v1, 0x7f10063e

    const-string/jumbo v2, "field \'textPointPackage\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointPackage:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f10063f

    const-string/jumbo v1, "field \'textPointPackageBaht\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 53
    const v1, 0x7f10063f

    const-string/jumbo v2, "field \'textPointPackageBaht\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointPackageBaht:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f100640

    const-string/jumbo v1, "field \'textDealPrice\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 55
    const v1, 0x7f100640

    const-string/jumbo v2, "field \'textDealPrice\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textDealPrice:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f10063b

    const-string/jumbo v1, "field \'layoutCalculateHidden\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 57
    const v1, 0x7f10063b

    const-string/jumbo v2, "field \'layoutCalculateHidden\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutCalculateHidden:Landroid/widget/LinearLayout;

    .line 58
    const v0, 0x7f100642

    const-string/jumbo v1, "field \'textBuyNow\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 59
    const v1, 0x7f100642

    const-string/jumbo v2, "field \'textBuyNow\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textBuyNow:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f100643

    const-string/jumbo v1, "field \'imageExpand\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 61
    const v1, 0x7f100643

    const-string/jumbo v2, "field \'imageExpand\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->imageExpand:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f100644

    const-string/jumbo v1, "field \'layoutLine\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 63
    const v1, 0x7f100644

    const-string/jumbo v2, "field \'layoutLine\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutLine:Landroid/widget/LinearLayout;

    .line 64
    const v0, 0x7f10063a

    const-string/jumbo v1, "field \'contentCalculate\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 65
    const v1, 0x7f10063a

    const-string/jumbo v2, "field \'contentCalculate\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentCalculate:Landroid/support/v7/widget/CardView;

    .line 66
    const v0, 0x7f100651

    const-string/jumbo v1, "field \'viewShadow\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 67
    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->viewShadow:Landroid/view/View;

    .line 68
    const v0, 0x7f100637

    const-string/jumbo v1, "field \'spinnerColor\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 69
    const v1, 0x7f100637

    const-string/jumbo v2, "field \'spinnerColor\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/Spinner;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerColor:Lcom/rey/material/widget/Spinner;

    .line 70
    const v0, 0x7f100638

    const-string/jumbo v1, "field \'spinnerSize\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 71
    const v1, 0x7f100638

    const-string/jumbo v2, "field \'spinnerSize\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/Spinner;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerSize:Lcom/rey/material/widget/Spinner;

    .line 72
    const v0, 0x7f100639

    const-string/jumbo v1, "field \'edtQuantity\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 73
    const v1, 0x7f100639

    const-string/jumbo v2, "field \'edtQuantity\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatEditText;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->edtQuantity:Landroid/support/v7/widget/AppCompatEditText;

    .line 74
    const v0, 0x7f10062e

    const-string/jumbo v1, "method \'onShare\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 75
    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector$2;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector$2;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f100641

    const-string/jumbo v1, "method \'onClickCalculate\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 84
    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector$3;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector$3;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v0, 0x7f10063c

    const-string/jumbo v1, "method \'onClickCalculate\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 93
    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector$4;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector$4;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 7
    check-cast p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic reset(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V
    .registers 2

    .prologue
    .line 7
    check-cast p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector;->reset(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;->reset(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V

    .line 106
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDiscount:Landroid/widget/TextView;

    .line 107
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewFullPrice:Landroid/widget/TextView;

    .line 108
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPrice:Landroid/widget/TextView;

    .line 109
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPoint:Landroid/widget/TextView;

    .line 110
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewTimeLeft:Landroid/widget/TextView;

    .line 111
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopTel:Landroid/widget/TextView;

    .line 112
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->txtHeaderPoint:Landroid/widget/TextView;

    .line 113
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopAddress:Landroid/widget/TextView;

    .line 114
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopWebsite:Landroid/widget/TextView;

    .line 115
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopDelivered:Landroid/widget/TextView;

    .line 116
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentInput:Landroid/support/v7/widget/CardView;

    .line 117
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    .line 118
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    .line 119
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentSubmit:Landroid/widget/RelativeLayout;

    .line 120
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointNeed:Landroid/widget/TextView;

    .line 121
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointPackage:Landroid/widget/TextView;

    .line 122
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointPackageBaht:Landroid/widget/TextView;

    .line 123
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textDealPrice:Landroid/widget/TextView;

    .line 124
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutCalculateHidden:Landroid/widget/LinearLayout;

    .line 125
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textBuyNow:Landroid/widget/TextView;

    .line 126
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->imageExpand:Landroid/widget/ImageView;

    .line 127
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutLine:Landroid/widget/LinearLayout;

    .line 128
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentCalculate:Landroid/support/v7/widget/CardView;

    .line 129
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->viewShadow:Landroid/view/View;

    .line 130
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerColor:Lcom/rey/material/widget/Spinner;

    .line 131
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerSize:Lcom/rey/material/widget/Spinner;

    .line 132
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->edtQuantity:Landroid/support/v7/widget/AppCompatEditText;

    .line 133
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 7
    check-cast p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector;->reset(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    return-void
.end method
