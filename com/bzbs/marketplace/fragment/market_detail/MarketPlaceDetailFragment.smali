.class public Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;
.super Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;
.source "MarketPlaceDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;
    }
.end annotation


# static fields
.field public static final KEY_DATA_MARKETPLACE_DETAIL:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field btnError:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100612
    .end annotation
.end field

.field btnSubmit:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100611
    .end annotation
.end field

.field contentCalculate:Landroid/support/v7/widget/CardView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005fc
    .end annotation
.end field

.field contentInput:Landroid/support/v7/widget/CardView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005f8
    .end annotation
.end field

.field contentSubmit:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100610
    .end annotation
.end field

.field edtQuantity:Landroid/support/v7/widget/AppCompatEditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005fb
    .end annotation
.end field

.field imageExpand:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100605
    .end annotation
.end field

.field private isClick:Z

.field private isWebsite:Z

.field layoutCalculateHidden:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005fd
    .end annotation
.end field

.field layoutLine:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100606
    .end annotation
.end field

.field private onShareSuccessListener:Lcom/bzbs/marketplace/listener/OnShareSuccessListener;

.field spinnerColor:Lcom/rey/material/widget/Spinner;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005f9
    .end annotation
.end field

.field spinnerSize:Lcom/rey/material/widget/Spinner;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005fa
    .end annotation
.end field

.field textBuyNow:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100604
    .end annotation
.end field

.field textDealPrice:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100602
    .end annotation
.end field

.field textPointNeed:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005ff
    .end annotation
.end field

.field textPointPackage:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100600
    .end annotation
.end field

.field textPointPackageBaht:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100601
    .end annotation
.end field

.field textViewDetailShopAddress:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060e
    .end annotation
.end field

.field textViewDetailShopDelivered:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060c
    .end annotation
.end field

.field textViewDetailShopTel:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060d
    .end annotation
.end field

.field textViewDetailShopWebsite:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060f
    .end annotation
.end field

.field textViewDiscount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005f4
    .end annotation
.end field

.field textViewFullPrice:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005f3
    .end annotation
.end field

.field textViewPoint:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005f5
    .end annotation
.end field

.field textViewPrice:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005f2
    .end annotation
.end field

.field textViewTimeLeft:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005f7
    .end annotation
.end field

.field txtHeaderPoint:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005f6
    .end annotation
.end field

.field viewShadow:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100613
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@@+DETAIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->KEY_DATA_MARKETPLACE_DETAIL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;-><init>()V

    .line 68
    const-class v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->TAG:Ljava/lang/String;

    .line 130
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->isClick:Z

    .line 131
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->isWebsite:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;I)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->setAdapterSize(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->isClick:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private calculatePoints()V
    .registers 7

    .prologue
    const/16 v2, 0x8

    .line 685
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->isEnoughPoint()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 686
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentCalculate:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 698
    :goto_d
    return-void

    .line 688
    :cond_e
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentCalculate:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->txtHeaderPoint:Landroid/widget/TextView;

    const v1, 0x7f0901c0

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutCalculateHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointNeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->formatterPercent:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserRequirePoint()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0901c1

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointPackage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointPackage:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pointServer"

    sget-object v4, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->formatterPercent:Ljava/text/DecimalFormat;

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v5}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserPackagePoint()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u0e3f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointPackageBaht:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u0e3f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->formatterPercent:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserPackagePrice()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textBuyNow:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u0e3f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->formatterPercent:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserSummaryPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d
.end method

.method private checkRedeemError()Ljava/lang/String;
    .registers 13

    .prologue
    .line 569
    const-string/jumbo v11, ""

    .line 570
    .local v11, "type":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 571
    .local v10, "pointType":Ljava/lang/String;
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 572
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v11

    .line 574
    :cond_14
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 575
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointType()Ljava/lang/String;

    move-result-object v10

    .line 577
    :cond_22
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v8

    .line 579
    .local v8, "lgPoints":J
    const-string/jumbo v0, "OPOLP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    XZxxxxxxxxxxxxxxxx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointPerUnit()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ab

    long-to-float v0, v8

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointPerUnit()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ab

    const-string/jumbo v0, "8"

    .line 581
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string/jumbo v0, "get"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 587
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090328

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0903aa

    invoke-virtual {p0, v3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09015e

    invoke-virtual {p0, v4}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f09015b

    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0903a8

    invoke-virtual {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-static/range {v0 .. v7}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getAlertBlurDialog(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    .line 588
    const v0, 0x7f0901b6

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    :goto_aa
    return-object v0

    :cond_ab
    const-string/jumbo v0, ""

    goto :goto_aa
.end method

.method private isEnoughPoint()Z
    .registers 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUpdatedPoint()Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUpdatedPoint()Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->getPoString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointPerUnit()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private sendBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/String;
    .param p3, "quantity"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v4, :cond_11f

    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getWebsite()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11f

    .line 281
    :try_start_17
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getWebsite()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_120

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    :goto_21
    invoke-static {v4}, Lcom/bzbs/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_24} :catch_12e

    move-result-object v3

    .line 284
    .local v3, "url":Ljava/lang/String;
    :try_start_25
    const-string/jumbo v4, "<uid>"

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 286
    .local v0, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    const-string/jumbo v4, "<deviceId>"

    invoke-static {}, Lcheat/FoxCore;->ranImei()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_43} :catch_128

    move-result-object v3

    .line 291
    .end local v0    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    :goto_44
    :try_start_44
    const-string/jumbo v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6a

    const-string/jumbo v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 294
    :cond_6a
    const-string/jumbo v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_133

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&qty="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    :goto_b9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "goBuyMarketPlace|url := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string/jumbo v4, "message"

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v5}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string/jumbo v4, "isWebsite"

    iget-boolean v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->isWebsite:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    iget v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->RC_WEBVIEW_BUY_POINT:I

    invoke-virtual {p0, v2, v4}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 318
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getPoints()V

    .line 324
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "url":Ljava/lang/String;
    :cond_11f
    :goto_11f
    return-void

    .line 281
    :cond_120
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getWebsite()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_21

    .line 287
    .restart local v3    # "url":Ljava/lang/String;
    :catch_128
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_12c} :catch_12e

    goto/16 :goto_44

    .line 320
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "url":Ljava/lang/String;
    :catch_12e
    move-exception v1

    .line 321
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11f

    .line 297
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_133
    :try_start_133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "?token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&qty="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_178} :catch_12e

    move-result-object v3

    goto/16 :goto_b9
.end method

.method private sendPostSubmit(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/loopj/android/http/RequestParams;

    .prologue
    .line 511
    new-instance v0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->POST:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$4;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->excute(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 538
    return-void
.end method

.method private setAdapterSize(I)V
    .registers 8
    .param p1, "i"    # I

    .prologue
    const/4 v5, 0x1

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0903d6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    if-eqz p1, :cond_56

    .line 189
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_89

    .line 190
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_56
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f040133

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 199
    .local v0, "adapterSize":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerSize:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v3, v0}, Lcom/rey/material/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 200
    if-eqz p1, :cond_88

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_88

    .line 201
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerSize:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v3, v5}, Lcom/rey/material/widget/Spinner;->setSelection(I)V

    .line 203
    :cond_88
    return-void

    .line 192
    .end local v0    # "adapterSize":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_89
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_8a
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 193
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a
.end method

.method private setTextButton()V
    .registers 7

    .prologue
    const v5, 0x7f09036e

    const v4, 0x7f0900c0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 328
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->calculatePoints()V

    .line 329
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 332
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->viewShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    const-string/jumbo v1, "#f23d43"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 336
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_40
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomCaption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomCaption()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    .line 347
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :goto_62
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isConditionPass()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 363
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    const-string/jumbo v1, "#f23d43"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 366
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getConditionAlert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_8b
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v0

    if-nez v0, :cond_b5

    .line 370
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->viewShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    const-string/jumbo v1, "#f23d43"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 374
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_b5
    :goto_b5
    return-void

    .line 338
    :cond_b6
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->isEnoughPoint()Z

    move-result v0

    if-nez v0, :cond_40

    .line 339
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 340
    :cond_e9
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b5

    .line 348
    :cond_f3
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 349
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    const v1, 0x7f0901bb

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62

    .line 350
    :cond_110
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 351
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    const v1, 0x7f0901bc

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62

    .line 352
    :cond_12d
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 353
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    const v1, 0x7f090215

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62

    .line 354
    :cond_14a
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 355
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62

    .line 356
    :cond_164
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 357
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    const-string/jumbo v1, "Subscribe"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62

    .line 359
    :cond_17d
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    const-string/jumbo v1, "Redeem"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62
.end method

.method private setupSpinnerWidget()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 159
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v3

    if-nez v3, :cond_e

    .line 183
    :cond_d
    :goto_d
    return-void

    .line 163
    :cond_e
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentInput:Landroid/support/v7/widget/CardView;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 165
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 167
    .local v1, "color":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0903d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 168
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_33
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v2, v3, :cond_5e

    .line 169
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 172
    :cond_5e
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f040133

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 174
    .local v0, "adapterColor":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerColor:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v3, v0}, Lcom/rey/material/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 176
    invoke-direct {p0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->setAdapterSize(I)V

    .line 177
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerColor:Lcom/rey/material/widget/Spinner;

    new-instance v4, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$1;

    invoke-direct {v4, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    invoke-virtual {v3, v4}, Lcom/rey/material/widget/Spinner;->setOnItemSelectedListener(Lcom/rey/material/widget/Spinner$OnItemSelectedListener;)V

    goto :goto_d
.end method

.method private setupWidget()V
    .registers 14

    .prologue
    const v12, 0x7f0901c1

    const/16 v10, 0x8

    .line 206
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentCalculate:Landroid/support/v7/widget/CardView;

    invoke-virtual {v6, v10}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 207
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-nez v6, :cond_f

    .line 276
    :goto_e
    return-void

    .line 210
    :cond_f
    const-string/jumbo v6, "BZB Campaign Details"

    const-string/jumbo v7, "View Campaign"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v9}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v9}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewFullPrice:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c9

    .line 215
    :cond_6e
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDiscount:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SAVE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->formatterPercent:Ljava/text/DecimalFormat;

    iget-object v9, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v9}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDiscount()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    sget-object v6, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->formatterPercent:Ljava/text/DecimalFormat;

    iget-object v7, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v7}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getOriginalPrice()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "txtOriginalPrice":Ljava/lang/String;
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewFullPrice:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewFullPrice:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u0e3f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewFullPrice:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewFullPrice:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v7

    or-int/lit8 v7, v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 225
    .end local v5    # "txtOriginalPrice":Ljava/lang/String;
    :goto_da
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPrice:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u0e3f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->formatterPercent:Ljava/text/DecimalFormat;

    iget-object v9, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v9}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPricePerUnit()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPoint:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f090343

    invoke-virtual {p0, v8}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->formatterPercent:Ljava/text/DecimalFormat;

    iget-object v9, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v9}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointPerUnit()F

    move-result v9

    float-to-double v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v12}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_192

    .line 229
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPoint:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0900c8

    invoke-virtual {p0, v8}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->formatterPercent:Ljava/text/DecimalFormat;

    iget-object v9, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v9}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointPerUnit()F

    move-result v9

    float-to-double v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v12}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_192
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewTimeLeft:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->formatterPercent:Ljava/text/DecimalFormat;

    iget-object v9, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v9}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDayRemain()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0901b8

    invoke-virtual {p0, v8}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v7, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopDelivered:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .line 234
    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isDelivered()Z

    move-result v6

    if-eqz v6, :cond_2d0

    const v6, 0x7f09035e

    invoke-virtual {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1e3
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 233
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v7, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopTel:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyTel()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2d9

    const-string/jumbo v6, ""

    :goto_1ff
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2e1

    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyAddress()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "agencyAddress":Ljava/lang/String;
    :goto_210
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyCity()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2e6

    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyCity()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "agencyCity":Ljava/lang/String;
    :goto_21e
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyCountry()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2eb

    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyCountry()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "agencyCountry":Ljava/lang/String;
    :goto_22c
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopAddress:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 244
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 245
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 242
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const-string/jumbo v3, ""

    .line 249
    .local v3, "agencyWebsite":Ljava/lang/String;
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyWebsite()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2f0

    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<a href=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v7}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyWebsite()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v7}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyWebsite()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</a>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopWebsite:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v8}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyWebsite()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v3, v8}, Lcom/bzbs/marketplace/util/LinkTextView;->setTextViewHTML(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_2ab
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    const v7, 0x7f050040

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 257
    .local v4, "showRedeemButtom":Landroid/view/animation/Animation;
    new-instance v6, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$2;

    invoke-direct {v6, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$2;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 272
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentSubmit:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->checkLike()V

    .line 275
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->setTextButton()V

    goto/16 :goto_e

    .line 222
    .end local v0    # "agencyAddress":Ljava/lang/String;
    .end local v1    # "agencyCity":Ljava/lang/String;
    .end local v2    # "agencyCountry":Ljava/lang/String;
    .end local v3    # "agencyWebsite":Ljava/lang/String;
    .end local v4    # "showRedeemButtom":Landroid/view/animation/Animation;
    :cond_2c9
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDiscount:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_da

    .line 234
    :cond_2d0
    const v6, 0x7f09035d

    invoke-virtual {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1e3

    .line 237
    :cond_2d9
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyTel()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1ff

    .line 239
    :cond_2e1
    const-string/jumbo v0, ""

    goto/16 :goto_210

    .line 240
    .restart local v0    # "agencyAddress":Ljava/lang/String;
    :cond_2e6
    const-string/jumbo v1, ""

    goto/16 :goto_21e

    .line 241
    .restart local v1    # "agencyCity":Ljava/lang/String;
    :cond_2eb
    const-string/jumbo v2, ""

    goto/16 :goto_22c

    .line 253
    .restart local v2    # "agencyCountry":Ljava/lang/String;
    .restart local v3    # "agencyWebsite":Ljava/lang/String;
    :cond_2f0
    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopWebsite:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2ab
.end method


# virtual methods
.method protected createLayoutBase(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 145
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->setupSpinnerWidget()V

    .line 146
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->setupWidget()V

    .line 148
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPrice:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->fontBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 149
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPoint:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->fontBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 150
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewTimeLeft:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->fontBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 151
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDiscount:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->fontBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 153
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->loadData()V

    .line 155
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 606
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->onActivityResult(IILandroid/content/Intent;)V

    .line 607
    const-string/jumbo v1, "onActivityResult"

    const-string/jumbo v2, "Result"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2a

    .line 609
    const-string/jumbo v1, "action"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_2a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 611
    const-string/jumbo v1, "doRedeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 627
    .end local v0    # "action":Ljava/lang/String;
    :cond_2a
    :goto_2a
    return-void

    .line 614
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2b
    const-string/jumbo v1, "doReviewList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 617
    const-string/jumbo v1, "doShareCampaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 620
    const-string/jumbo v1, "like"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_2a
.end method

.method public onClickCalculate(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100603,
            0x7f1005fe
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100603

    if-ne v0, v1, :cond_25

    .line 670
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutCalculateHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_24

    .line 671
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutCalculateHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->imageExpand:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    :cond_24
    :goto_24
    return-void

    .line 675
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1005fe

    if-ne v0, v1, :cond_24

    .line 676
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutCalculateHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 677
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutCalculateHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->imageExpand:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_24
.end method

.method protected onLoadFromUrl()V
    .registers 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->setupSpinnerWidget()V

    .line 137
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->setupWidgetBase()V

    .line 138
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->setupWidget()V

    .line 141
    return-void
.end method

.method public onShare(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1005f0
        }
    .end annotation

    .prologue
    .line 631
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-nez v0, :cond_5

    .line 665
    :cond_4
    :goto_4
    return-void

    .line 634
    :cond_5
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 637
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 638
    .local v7, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_29

    .line 639
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09024b

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 643
    :cond_29
    const-string/jumbo v0, "BZB Campaign Details"

    const-string/jumbo v1, "Click Share"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 646
    .local v8, "token":Ljava/lang/String;
    if-nez v8, :cond_72

    .line 647
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "BZB Campaign Details"

    const-string/jumbo v6, "market_like"

    invoke-static {v1, v2, v0, v3, v6}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 649
    :cond_72
    const-string/jumbo v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 650
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "BZB Campaign Details"

    const-string/jumbo v6, "market_like"

    invoke-static {v1, v2, v0, v3, v6}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 654
    :cond_90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_BZBS_BLOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "campaigns/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "pic":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/og/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 657
    .local v5, "link":Ljava/lang/String;
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDetail()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$5;

    invoke-direct {v6, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$5;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    invoke-virtual/range {v0 .. v6}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V

    goto/16 :goto_4
.end method

.method public onSubmit(Landroid/view/View;)V
    .registers 27
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100610
        }
    .end annotation

    .prologue
    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    .line 385
    .local v12, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-nez v4, :cond_24

    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f09024b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    :cond_23
    :goto_23
    return-void

    .line 390
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 391
    .local v23, "token":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    if-eqz v4, :cond_3c

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_23

    .line 395
    :cond_3c
    if-eqz v23, :cond_3b8

    const-string/jumbo v4, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b8

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v4, :cond_23

    .line 399
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->isClick:Z

    if-nez v4, :cond_23

    .line 400
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->isClick:Z

    .line 401
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$3;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->getNotUserFunction(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isConditionPass()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->checkRedeemError()Ljava/lang/String;

    move-result-object v20

    .line 417
    .local v20, "strRedeemError":Ljava/lang/String;
    if-eqz v20, :cond_90

    const-string/jumbo v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 423
    :cond_90
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isDelivered()Z

    move-result v4

    if-eqz v4, :cond_eb

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 426
    :cond_bc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f09031a

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f090318

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    const v9, 0x7f09036f

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    const/4 v11, 0x0

    .line 426
    invoke-static/range {v4 .. v11}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getAlerUpdateProfiletBlurDialog(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    goto/16 :goto_23

    .line 434
    :cond_eb
    const-string/jumbo v14, "Click Redeem"

    .line 435
    .local v14, "event":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_152

    .line 436
    const-string/jumbo v14, "Click Draw"

    .line 446
    :cond_102
    :goto_102
    const-string/jumbo v4, "BZB Campaign Details"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v14, v5}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cb

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-static {v4, v5, v6}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getDialogConditionDraws(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    goto/16 :goto_23

    .line 437
    :cond_152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_174

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_178

    .line 438
    :cond_174
    const-string/jumbo v14, "Click Watch Ad"

    goto :goto_102

    .line 439
    :cond_178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19f

    .line 440
    :cond_19a
    const-string/jumbo v14, "Click Free"

    goto/16 :goto_102

    .line 441
    :cond_19f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b5

    .line 442
    const-string/jumbo v14, "Click Deal"

    goto/16 :goto_102

    .line 443
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_102

    .line 444
    const-string/jumbo v14, "Click Buy"

    goto/16 :goto_102

    .line 451
    :cond_1cb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ed

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fe

    .line 454
    :cond_1ed
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-static {v4, v5, v6}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getDialogConditionDealsGet(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    goto/16 :goto_23

    .line 458
    :cond_1fe
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2eb

    .line 459
    const-string/jumbo v13, ""

    .local v13, "color":Ljava/lang/String;
    const-string/jumbo v19, ""

    .local v19, "size":Ljava/lang/String;
    const-string/jumbo v18, ""

    .line 460
    .local v18, "quantity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v4, :cond_2e0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v4

    if-eqz v4, :cond_2e0

    .line 461
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerColor:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v4}, Lcom/rey/material/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_244

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f090448

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto/16 :goto_23

    .line 464
    :cond_244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerSize:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v4}, Lcom/rey/material/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_260

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f09044a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto/16 :goto_23

    .line 467
    :cond_260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->edtQuantity:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_284

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f090449

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto/16 :goto_23

    .line 472
    :cond_284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerColor:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v4}, Lcom/rey/material/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    .line 473
    .local v16, "positionColor":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerSize:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v4}, Lcom/rey/material/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    .line 474
    .local v17, "positionSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v4

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    .line 475
    .local v21, "style":Lcom/bzbs/marketplace/model/marketplace/detail/Style;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v4

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v4

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;

    .line 476
    .local v22, "subitem":Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;
    invoke-virtual/range {v21 .. v21}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 477
    invoke-virtual/range {v22 .. v22}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->edtQuantity:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 480
    .end local v16    # "positionColor":I
    .end local v17    # "positionSize":I
    .end local v21    # "style":Lcom/bzbs/marketplace/model/marketplace/detail/Style;
    .end local v22    # "subitem":Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;
    :cond_2e0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v13, v1, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->sendBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 481
    .end local v13    # "color":Ljava/lang/String;
    .end local v18    # "quantity":Ljava/lang/String;
    .end local v19    # "size":Ljava/lang/String;
    :cond_2eb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 483
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_364

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getInterfaceDisplay()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "api"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_364

    .line 485
    const-string/jumbo v4, "OPOPO"

    const-string/jumbo v5, "TYPE 8 XXXXX"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getWebsite()Ljava/lang/String;

    move-result-object v24

    .line 487
    .local v24, "url":Ljava/lang/String;
    new-instance v15, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v15}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 488
    .local v15, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v4, "token"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-static {v4, v5, v6}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getDialogConditionDealsGet(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    goto/16 :goto_23

    .line 493
    .end local v15    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v24    # "url":Ljava/lang/String;
    :cond_364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3ac

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getInterfaceDisplay()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "web"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3ac

    .line 494
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getWebsite()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39c

    .line 495
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->isWebsite:Z

    .line 497
    :cond_39c
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->sendBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 499
    :cond_3ac
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v5, "Can not open."

    invoke-static {v4, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto/16 :goto_23

    .line 504
    .end local v14    # "event":Ljava/lang/String;
    .end local v20    # "strRedeemError":Ljava/lang/String;
    :cond_3b8
    new-instance v4, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$1;)V

    invoke-static {v4}, Lcom/bzbs/event/LoginEvents;->addLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v4, v4, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v7, "BZB Campaign Details"

    const-string/jumbo v8, "market_redeem"

    invoke-static {v5, v6, v4, v7, v8}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23
.end method
