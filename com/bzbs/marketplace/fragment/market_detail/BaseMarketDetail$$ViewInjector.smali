.class public Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;
.super Ljava/lang/Object;
.source "BaseMarketDetail$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Ljava/lang/Object;)V
    .registers 12
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
    const v7, 0x7f10062a

    const v6, 0x7f100629

    const v5, 0x7f100628

    const v4, 0x7f100627

    const v3, 0x7f10025a

    .line 11
    const v0, 0x7f10062d

    const-string/jumbo v1, "field \'textViewLike\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const v1, 0x7f10062d

    const-string/jumbo v2, "field \'textViewLike\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewLike:Landroid/widget/TextView;

    .line 13
    const v0, 0x7f10062c

    const-string/jumbo v1, "field \'imageLike\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const v1, 0x7f10062c

    const-string/jumbo v2, "field \'imageLike\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->imageLike:Landroid/widget/ImageView;

    .line 15
    const v0, 0x7f10062b

    const-string/jumbo v1, "field \'layoutLike\' and method \'sendLike\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const v1, 0x7f10062b

    const-string/jumbo v2, "field \'layoutLike\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->layoutLike:Landroid/widget/LinearLayout;

    .line 17
    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v0, 0x7f10062e

    const-string/jumbo v1, "field \'layoutShared\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    const v1, 0x7f10062e

    const-string/jumbo v2, "field \'layoutShared\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->layoutShared:Landroid/widget/LinearLayout;

    .line 27
    const-string/jumbo v0, "field \'textViewComment\'"

    invoke-virtual {p1, p3, v7, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    const-string/jumbo v1, "field \'textViewComment\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewComment:Landroid/widget/TextView;

    .line 29
    const-string/jumbo v0, "field \'layoutComment\' and method \'onClickComment\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30
    const-string/jumbo v1, "field \'layoutComment\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->layoutComment:Landroid/widget/LinearLayout;

    .line 31
    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector$2;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector$2;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const-string/jumbo v0, "field \'viewPager\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 40
    const-string/jumbo v1, "field \'viewPager\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    .line 41
    const-string/jumbo v0, "field \'indicatorViewPager\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 42
    const-string/jumbo v1, "field \'indicatorViewPager\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/relex/circleindicator/CircleIndicator;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->indicatorViewPager:Lme/relex/circleindicator/CircleIndicator;

    .line 43
    const-string/jumbo v0, "field \'contentViewPager\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 44
    const-string/jumbo v1, "field \'contentViewPager\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentViewPager:Landroid/widget/RelativeLayout;

    .line 45
    const v0, 0x7f10062f

    const-string/jumbo v1, "field \'textViewTitle\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 46
    const v1, 0x7f10062f

    const-string/jumbo v2, "field \'textViewTitle\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewTitle:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f100648

    const-string/jumbo v1, "field \'textViewDetail\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 48
    const v1, 0x7f100648

    const-string/jumbo v2, "field \'textViewDetail\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewDetail:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f100649

    const-string/jumbo v1, "field \'textViewCondition\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 50
    const v1, 0x7f100649

    const-string/jumbo v2, "field \'textViewCondition\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewCondition:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f100645

    const-string/jumbo v1, "field \'contentDetail\' and method \'onSelectedTab\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 52
    const v1, 0x7f100645

    const-string/jumbo v2, "field \'contentDetail\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentDetail:Landroid/widget/RelativeLayout;

    .line 53
    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector$3;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector$3;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f100646

    const-string/jumbo v1, "field \'contentCondition\' and method \'onSelectedTab\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 62
    const v1, 0x7f100646

    const-string/jumbo v2, "field \'contentCondition\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentCondition:Landroid/widget/RelativeLayout;

    .line 63
    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector$4;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector$4;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f100647

    const-string/jumbo v1, "field \'vShadow\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 72
    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->vShadow:Landroid/view/View;

    .line 73
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 76
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewLike:Landroid/widget/TextView;

    .line 77
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->imageLike:Landroid/widget/ImageView;

    .line 78
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->layoutLike:Landroid/widget/LinearLayout;

    .line 79
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->layoutShared:Landroid/widget/LinearLayout;

    .line 80
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewComment:Landroid/widget/TextView;

    .line 81
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->layoutComment:Landroid/widget/LinearLayout;

    .line 82
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    .line 83
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->indicatorViewPager:Lme/relex/circleindicator/CircleIndicator;

    .line 84
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentViewPager:Landroid/widget/RelativeLayout;

    .line 85
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewTitle:Landroid/widget/TextView;

    .line 86
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewDetail:Landroid/widget/TextView;

    .line 87
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewCondition:Landroid/widget/TextView;

    .line 88
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentDetail:Landroid/widget/RelativeLayout;

    .line 89
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentCondition:Landroid/widget/RelativeLayout;

    .line 90
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->vShadow:Landroid/view/View;

    .line 91
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;->reset(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V

    return-void
.end method
