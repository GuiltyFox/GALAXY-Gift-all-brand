.class public abstract Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "BaseMarketDetail.java"


# static fields
.field public static g:Ljava/text/DecimalFormat;

.field public static h:Ljava/text/DecimalFormat;


# instance fields
.field contentCondition:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10066d
    .end annotation
.end field

.field contentDetail:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10066c
    .end annotation
.end field

.field public contentViewPager:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10064e
    .end annotation
.end field

.field public i:I

.field public imageLike:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100653
    .end annotation
.end field

.field public indicatorViewPager:Lme/relex/circleindicator/CircleIndicator;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10064f
    .end annotation
.end field

.field public j:I

.field public k:I

.field public l:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

.field public layoutComment:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100650
    .end annotation
.end field

.field public layoutLike:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100652
    .end annotation
.end field

.field public layoutShared:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100655
    .end annotation
.end field

.field public m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/detail/Picture;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceDetailImagePagerAdapter;

.field q:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

.field public r:Lcom/bzbs/bean/CampaignView;

.field public textViewComment:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100651
    .end annotation
.end field

.field textViewCondition:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100670
    .end annotation
.end field

.field textViewDetail:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10066f
    .end annotation
.end field

.field public textViewLike:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100654
    .end annotation
.end field

.field public textViewTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100656
    .end annotation
.end field

.field vShadow:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10066e
    .end annotation
.end field

.field public viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10026b
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->g:Ljava/text/DecimalFormat;

    .line 63
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->h:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->i:I

    .line 97
    const/16 v0, 0x15

    iput v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->j:I

    .line 98
    const/16 v0, 0x19

    iput v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->k:I

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Z)V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    if-eqz v0, :cond_10

    .line 375
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    if-eqz p1, :cond_11

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->c(I)V

    .line 377
    :cond_10
    return-void

    .line 375
    :cond_11
    const/16 v1, 0x8

    goto :goto_d
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ItemMarketPlace"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lorg/parceler/Parcels;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->l:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    .line 139
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->l:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->n:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 115
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "BaseMarketDetail::Layout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 120
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(Ljava/lang/String;Z)V

    .line 122
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    sget v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentViewPager:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->g()V

    .line 126
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->c()V

    .line 127
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->d()V

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end method

.method public c()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 143
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-nez v0, :cond_6

    .line 159
    :cond_5
    :goto_5
    return-void

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewComment:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewDetail:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewCondition:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 149
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, ""

    :goto_23
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewComment:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getBuzz()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_71

    const-string/jumbo v0, ""

    :goto_33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewDetail:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDetail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9e

    const-string/jumbo v0, ""

    :goto_43
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewCondition:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCondition()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a5

    const-string/jumbo v0, ""

    :goto_53
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 155
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentCondition:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 156
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->vShadow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->f()V

    goto :goto_5

    .line 149
    :cond_6a
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 150
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090276

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getBuzz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 151
    :cond_9e
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDetail()Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 152
    :cond_a5
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCondition()Ljava/lang/String;

    move-result-object v0

    goto :goto_53
.end method

.method public d()V
    .registers 5

    .prologue
    .line 187
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 205
    :cond_4
    :goto_4
    return-void

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->indicatorViewPager:Lme/relex/circleindicator/CircleIndicator;

    if-eqz v0, :cond_4

    .line 194
    new-instance v0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceDetailImagePagerAdapter;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->o:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceDetailImagePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->p:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceDetailImagePagerAdapter;

    .line 196
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->p:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceDetailImagePagerAdapter;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 197
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->setInterval(J)V

    .line 198
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->h()V

    .line 199
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->indicatorViewPager:Lme/relex/circleindicator/CircleIndicator;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->a(Landroid/support/v4/view/ViewPager;)V

    .line 201
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    invoke-static {v0}, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal;->a(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)V

    .line 203
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 204
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->indicatorViewPager:Lme/relex/circleindicator/CircleIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->setVisibility(I)V

    goto :goto_4
.end method

.method public e()V
    .registers 5

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a(Z)V

    .line 209
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlMarketPlaceDetail(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string/jumbo v1, "loadData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadData() called with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v1, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;->c(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->q:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

    .line 212
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->q:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;->a(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask$CallbackModel;)V

    .line 249
    return-void
.end method

.method public f()V
    .registers 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isLike()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 317
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->imageLike:Landroid/widget/ImageView;

    const v1, 0x7f02029d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    :goto_10
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewLike:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPeopleLike()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    return-void

    .line 319
    :cond_37
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->imageLike:Landroid/widget/ImageView;

    const v1, 0x7f02029e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10
.end method

.method public onClickComment(Landroid/view/View;)V
    .registers 7
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100650
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 328
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-nez v0, :cond_6

    .line 358
    :cond_5
    :goto_5
    return-void

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 332
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_24

    .line 333
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    const v1, 0x7f090251

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 337
    :cond_24
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v0, :cond_55

    .line 338
    const-string/jumbo v0, "BZB Campaign Details"

    const-string/jumbo v1, "Click Comment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_55
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 345
    if-nez v0, :cond_7f

    .line 346
    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;

    invoke-direct {v0, p0, v4}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 347
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->E:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "BZB Campaign Details"

    const-string/jumbo v4, "market_like"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 349
    :cond_7f
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 350
    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;

    invoke-direct {v0, p0, v4}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 351
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->E:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "BZB Campaign Details"

    const-string/jumbo v4, "market_like"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 355
    :cond_a5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    const-class v2, Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    const-string/jumbo v1, "ReviewActivity::Data"

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 368
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroyView()V

    .line 369
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->q:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

    if-eqz v0, :cond_c

    .line 370
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->q:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;->a()V

    .line 371
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 362
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onResume()V

    .line 364
    return-void
.end method

.method public onSelectedTab(Landroid/view/View;)V
    .registers 7
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10066c,
            0x7f10066d
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 164
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentCondition:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10066c

    if-ne v0, v1, :cond_5d

    .line 167
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 168
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->vShadow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 169
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewDetail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewCondition:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v0, :cond_5c

    .line 173
    const-string/jumbo v0, "BZB Campaign Details"

    const-string/jumbo v1, "Click Details"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_5c
    :goto_5c
    return-void

    .line 175
    :cond_5d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10066d

    if-ne v0, v1, :cond_5c

    .line 176
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentCondition:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 177
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->vShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 178
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewDetail:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewCondition:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v0, :cond_5c

    .line 182
    const-string/jumbo v0, "BZB Campaign Details"

    const-string/jumbo v1, "Click Conditions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c
.end method

.method public sendLike(Landroid/view/View;)V
    .registers 7
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100652
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 254
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-nez v0, :cond_6

    .line 311
    :cond_5
    :goto_5
    return-void

    .line 257
    :cond_6
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 261
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 262
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    const v1, 0x7f090251

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 266
    :cond_2a
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v0, :cond_5b

    .line 267
    const-string/jumbo v0, "BZB Campaign Details"

    const-string/jumbo v1, "Click Like"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_5b
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_d1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 272
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlLikeMarketDetail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    const/4 v0, 0x0

    .line 275
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isLike()Z

    move-result v2

    if-nez v2, :cond_b8

    .line 276
    const/4 v0, 0x1

    .line 277
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPeopleLike()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setPeopleLike(Ljava/lang/String;)V

    .line 282
    :goto_9b
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setIsLike(Z)V

    .line 284
    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    if-eqz v0, :cond_ce

    sget-object v0, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    :goto_a8
    invoke-direct {v2, v3, v1, v4, v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$2;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$2;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 306
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->f()V

    goto/16 :goto_5

    .line 279
    :cond_b8
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPeopleLike()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setPeopleLike(Ljava/lang/String;)V

    goto :goto_9b

    .line 284
    :cond_ce
    sget-object v0, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->c:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    goto :goto_a8

    .line 308
    :cond_d1
    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;

    invoke-direct {v0, p0, v4}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 309
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->E:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "BZB Campaign Details"

    const-string/jumbo v4, "market_like"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method
