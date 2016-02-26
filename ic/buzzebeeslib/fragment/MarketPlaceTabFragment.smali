.class public Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;
.super Landroid/support/v4/app/Fragment;
.source "MarketPlaceTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;
    }
.end annotation


# static fields
.field public static final ALL_LIST_STATE:I = 0x4

.field public static final DEAL_LIST_STATE:I = 0x3

.field public static final DRAW_LIST_STATE:I = 0x2

.field public static final FREE_LIST_STATE:I = 0x1

.field public static final NEARBY_LIST_STATE:I = 0x6

.field public static final SEARCH_LIST_STATE:I = 0x5

.field public static final SPONSOR_LIST_STATE:I = 0x7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private final LOGCATLC:Ljava/lang/String;

.field private gCurrentCategoryName:Ljava/lang/String;

.field private gCurrentFilterCategory:Ljava/lang/String;

.field private gCurrentFilterCenter:Ljava/lang/String;

.field private gCurrentFilterMode:Ljava/lang/String;

.field private gCurrentFilterPlace:Ljava/lang/String;

.field private gCurrentFilterPoints:J

.field private gCurrentFilterSponsor:Ljava/lang/String;

.field private gCurrentSearh:Ljava/lang/String;

.field private gHandler:Landroid/os/Handler;

.field private gSDK_INT:I

.field private gTabState:I

.field private img:Landroid/widget/ImageView;

.field private imgCancelSearch:Landroid/widget/ImageView;

.field private imgCash1:Landroid/widget/ImageView;

.field private imgCash2:Landroid/widget/ImageView;

.field private imgCash3:Landroid/widget/ImageView;

.field private imgCash4:Landroid/widget/ImageView;

.field private imgCash5:Landroid/widget/ImageView;

.field private imgCash6:Landroid/widget/ImageView;

.field private imgCash7:Landroid/widget/ImageView;

.field private imgCash8:Landroid/widget/ImageView;

.field private imgCash9:Landroid/widget/ImageView;

.field private imgComma1:Landroid/widget/ImageView;

.field private imgComma2:Landroid/widget/ImageView;

.field private layoutTextSearch:Landroid/widget/RelativeLayout;

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mLeak:Landroid/view/View;

.field private marketPlace_3_fragment_tab_menu_tab:Landroid/view/View;

.field private nav:Landroid/graphics/Bitmap;

.field private tabAll1:Landroid/widget/RelativeLayout;

.field private tabAll2:Landroid/widget/TextView;

.field private tabDeal1:Landroid/widget/RelativeLayout;

.field private tabDeal2:Landroid/widget/TextView;

.field private tabDraw1:Landroid/widget/RelativeLayout;

.field private tabDraw2:Landroid/widget/TextView;

.field private tabFree1:Landroid/widget/RelativeLayout;

.field private tabFree2:Landroid/widget/TextView;

.field private tvSearchCaption:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    const-string v0, "buzzebees.market.fragment"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->LOGCAT:Ljava/lang/String;

    .line 41
    const-string v0, "buzzebees.market.fragment.lc"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->LOGCATLC:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentCategoryName:Ljava/lang/String;

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gSDK_INT:I

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "pKeyword"    # Ljava/lang/String;
    .param p2, "pFilter_category_id"    # Ljava/lang/String;
    .param p3, "pFilter_category_name"    # Ljava/lang/String;
    .param p4, "pFilter_points"    # J
    .param p6, "pFilter_center"    # Ljava/lang/String;
    .param p7, "pFilter_mode"    # Ljava/lang/String;
    .param p8, "pFilter_sponsor"    # Ljava/lang/String;
    .param p9, "pFilter_location"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    const-string v0, "buzzebees.market.fragment"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->LOGCAT:Ljava/lang/String;

    .line 41
    const-string v0, "buzzebees.market.fragment.lc"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->LOGCATLC:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentCategoryName:Ljava/lang/String;

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gSDK_INT:I

    .line 109
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentCategoryName:Ljava/lang/String;

    .line 112
    neg-long v0, p4

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    .line 113
    iput-object p6, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 114
    iput-object p7, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 115
    iput-object p8, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 116
    iput-object p9, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 118
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    const-string v1, "MarketPlaceTabFragment(...)"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree1:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V
    .registers 1

    .prologue
    .line 648
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoFreeListView()V

    return-void
.end method

.method static synthetic access$4(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw1:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V
    .registers 1

    .prologue
    .line 691
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoDrawListView()V

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal1:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$7(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V
    .registers 1

    .prologue
    .line 734
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoDealListView()V

    return-void
.end method

.method static synthetic access$8(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$9(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V
    .registers 1

    .prologue
    .line 824
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoAllListView()V

    return-void
.end method

.method private getPointFromServer()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/me/point?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;

    invoke-direct {v1, p0, v3}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;)V

    invoke-static {v0, v1, v3}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 1028
    return-void
.end method

.method private gotoAllListView()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 825
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    if-eq v0, v2, :cond_60

    .line 826
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->marketPlace_3_fragment_tab_menu_tab:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 827
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->resetTab()V

    .line 832
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61

    .line 833
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 834
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 835
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 836
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 837
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    const-string v1, "#282425"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 852
    :goto_36
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    .line 853
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    .line 854
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 855
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    .line 856
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 857
    const-string v0, "all"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 858
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 859
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 861
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->layoutTextSearch:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 863
    const-string v0, ""

    invoke-direct {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->replaceListFragment(Ljava/lang/String;)V

    .line 865
    :cond_60
    return-void

    .line 838
    :cond_61
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8a

    .line 839
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 840
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_blue1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 841
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 842
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_blue2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 843
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    const-string v1, "#bebebe"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_36

    .line 845
    :cond_8a
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 846
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 847
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 848
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 849
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    const-string v1, "#282425"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_36
.end method

.method private gotoAllListView(Ljava/lang/String;)V
    .registers 5
    .param p1, "pCurrentFilterPlace"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 777
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    if-eq v0, v2, :cond_5e

    .line 778
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->marketPlace_3_fragment_tab_menu_tab:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 779
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->resetTab()V

    .line 784
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5f

    .line 785
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 786
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 787
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 788
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 789
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    const-string v1, "#282425"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 804
    :goto_36
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    .line 805
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    .line 806
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 807
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    .line 808
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 809
    const-string v0, "all"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 810
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 811
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 813
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->layoutTextSearch:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 820
    const-string v0, ""

    invoke-direct {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->replaceListFragment(Ljava/lang/String;)V

    .line 822
    :cond_5e
    return-void

    .line 790
    :cond_5f
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_88

    .line 791
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 792
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_blue1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 793
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 794
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_blue2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 795
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    const-string v1, "#bebebe"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_36

    .line 797
    :cond_88
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 798
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 799
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 800
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 801
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    const-string v1, "#282425"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_36
.end method

.method private gotoDealListView()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 735
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    if-eq v0, v2, :cond_60

    .line 736
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->marketPlace_3_fragment_tab_menu_tab:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 737
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->resetTab()V

    .line 741
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61

    .line 742
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 743
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 744
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 745
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 746
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    const-string v1, "#282425"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 761
    :goto_36
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    .line 762
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    .line 763
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 764
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    .line 765
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 766
    const-string v0, "deal"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 767
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 768
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->layoutTextSearch:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 772
    const-string v0, ""

    invoke-direct {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->replaceListFragment(Ljava/lang/String;)V

    .line 774
    :cond_60
    return-void

    .line 747
    :cond_61
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8a

    .line 748
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 749
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_blue1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 750
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 751
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_blue2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 752
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    const-string v1, "#bebebe"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_36

    .line 754
    :cond_8a
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 755
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 756
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 757
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 758
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    const-string v1, "#282425"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_36
.end method

.method private gotoDrawListView()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 692
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    if-eq v0, v2, :cond_60

    .line 693
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->marketPlace_3_fragment_tab_menu_tab:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 694
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->resetTab()V

    .line 699
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61

    .line 700
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 701
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 702
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 703
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 704
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    const-string v1, "#282425"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 719
    :goto_36
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    .line 720
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    .line 721
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 722
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    .line 723
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 724
    const-string v0, "draw"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 725
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 726
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 728
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->layoutTextSearch:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 730
    const-string v0, ""

    invoke-direct {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->replaceListFragment(Ljava/lang/String;)V

    .line 732
    :cond_60
    return-void

    .line 705
    :cond_61
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    if-ne v0, v2, :cond_89

    .line 706
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 707
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_blue1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 708
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 709
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_blue2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 710
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    const-string v1, "#bebebe"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_36

    .line 712
    :cond_89
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 713
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 714
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 715
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 716
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    const-string v1, "#282425"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_36
.end method

.method private gotoFreeListView()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 649
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    if-eq v0, v2, :cond_5f

    .line 650
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->marketPlace_3_fragment_tab_menu_tab:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->resetTab()V

    .line 655
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    if-ne v0, v2, :cond_60

    .line 657
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 659
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 660
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 661
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    const-string v1, "#282425"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 676
    :goto_35
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    .line 677
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    .line 678
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 679
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    .line 680
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 681
    const-string v0, "free_ads"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 682
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 683
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 685
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->layoutTextSearch:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 687
    const-string v0, ""

    invoke-direct {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->replaceListFragment(Ljava/lang/String;)V

    .line 689
    :cond_5f
    return-void

    .line 662
    :cond_60
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_89

    .line 663
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 664
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_blue1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 665
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 666
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_blue2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 667
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    const-string v1, "#bebebe"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_35

    .line 669
    :cond_89
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 670
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 671
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 672
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 673
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    const-string v1, "#282425"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_35
.end method

.method private gotoLoadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24
    .param p1, "pFilter_category_id"    # Ljava/lang/String;
    .param p2, "pFilter_category_name"    # Ljava/lang/String;
    .param p3, "pFilter_points"    # J
    .param p5, "pFilter_center"    # Ljava/lang/String;
    .param p6, "pFilter_mode"    # Ljava/lang/String;
    .param p7, "pFilter_sponsor"    # Ljava/lang/String;
    .param p8, "pFilter_location"    # Ljava/lang/String;

    .prologue
    .line 961
    move-object/from16 v0, p1

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 962
    move-wide/from16 v0, p3

    neg-long v2, v0

    iput-wide v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    .line 963
    move-object/from16 v0, p5

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 964
    move-object/from16 v0, p6

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 965
    move-object/from16 v0, p7

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 966
    move-object/from16 v0, p8

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 969
    const-string v2, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 970
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->layoutTextSearch:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 971
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tvSearchCaption:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    :cond_45
    const-string v2, "free_ads"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 975
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoFreeListView()V

    .line 990
    :cond_52
    :goto_52
    return-void

    .line 976
    :cond_53
    const-string v2, "draw"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 977
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoDrawListView()V

    goto :goto_52

    .line 978
    :cond_61
    const-string v2, "deal"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 979
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoDealListView()V

    goto :goto_52

    .line 980
    :cond_6f
    const-string v2, "all"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 981
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoAllListView()V

    goto :goto_52

    .line 983
    :cond_7d
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v12

    .line 984
    .local v12, "fm":Landroid/support/v4/app/FragmentManager;
    if-eqz v12, :cond_52

    .line 985
    invoke-virtual {v12}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    .line 986
    .local v13, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v14, Lic/buzzebeeslib/R$idMarketPlace3Fragment;->fragment_content:I

    new-instance v2, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    iget v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    const-string v4, ""

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 987
    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_52
.end method

.method private gotoNearByListView()V
    .registers 4

    .prologue
    const/4 v1, 0x6

    .line 911
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    if-eq v0, v1, :cond_40

    .line 912
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->resetTab()V

    .line 914
    iput v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    .line 915
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    .line 916
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 917
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    .line 918
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 919
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 920
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 921
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 923
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->layoutTextSearch:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tvSearchCaption:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$string;->market_nearby:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    const-string v0, ""

    invoke-direct {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->replaceListFragment(Ljava/lang/String;)V

    .line 928
    :cond_40
    return-void
.end method

.method private gotoSearchListView(Ljava/lang/String;)V
    .registers 6
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 869
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->resetTab()V

    .line 874
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7a

    .line 875
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 876
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 877
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 878
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 879
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    const-string v1, "#282425"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 894
    :goto_2b
    const/4 v0, 0x5

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    .line 895
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    .line 896
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 897
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    .line 898
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 899
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 900
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 901
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 903
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->layoutTextSearch:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tvSearchCaption:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->market_result_search_by:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->replaceListFragment(Ljava/lang/String;)V

    .line 908
    return-void

    .line 880
    :cond_7a
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a3

    .line 881
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 882
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_blue1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 883
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 884
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_blue2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 885
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    const-string v1, "#bebebe"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2b

    .line 887
    :cond_a3
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 888
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 889
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 890
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab_orange2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 891
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    const-string v1, "#282425"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2b
.end method

.method private gotoSponsorListView()V
    .registers 3

    .prologue
    const/4 v1, 0x7

    .line 931
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    if-eq v0, v1, :cond_2e

    .line 932
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->resetTab()V

    .line 934
    iput v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    .line 935
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 936
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    .line 937
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 938
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 939
    const-string v0, "sponsor"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 940
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 942
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->layoutTextSearch:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 944
    const-string v0, ""

    invoke-direct {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->replaceListFragment(Ljava/lang/String;)V

    .line 946
    :cond_2e
    return-void
.end method

.method private replaceListFragment(Ljava/lang/String;)V
    .registers 15
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 949
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    .line 950
    .local v10, "fm":Landroid/support/v4/app/FragmentManager;
    if-eqz v10, :cond_26

    .line 951
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v11

    .line 952
    .local v11, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v12, Lic/buzzebeeslib/R$idMarketPlace3Fragment;->fragment_content:I

    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 953
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 955
    .end local v11    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_26
    return-void
.end method

.method private resetTab()V
    .registers 3

    .prologue
    .line 1001
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 1002
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1003
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 1004
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1005
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 1006
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1007
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 1008
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1010
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 1011
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1012
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 1013
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1014
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 1015
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1016
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 1017
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_market_tab2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1019
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    const-string v1, "#bebebe"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1020
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    const-string v1, "#bebebe"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1021
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    const-string v1, "#bebebe"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1022
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    const-string v1, "#bebebe"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1023
    return-void
.end method

.method private resetTabState()V
    .registers 2

    .prologue
    .line 997
    const/4 v0, 0x0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    .line 998
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 603
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 646
    return-void
.end method


# virtual methods
.method public getTabState()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 993
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 358
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 368
    if-eqz p1, :cond_8

    .line 369
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 372
    :cond_8
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 131
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->setRetainInstance(Z)V

    .line 147
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gHandler:Landroid/os/Handler;

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gSDK_INT:I

    .line 151
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 155
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 158
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    const-string v1, "UA-42649771-1"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 164
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAServiceManager;->setDispatchPeriod(I)V

    .line 166
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 167
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    sget v3, Lic/buzzebeeslib/R$layout;->bz_market_place_fragment_tab:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    .line 181
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->marketPlace_3_fragment_tab_menu_tab:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->marketPlace_3_fragment_tab_menu_tab:Landroid/view/View;

    .line 183
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->tvMyPoint:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 185
    .local v2, "tvMyPoint":Landroid/widget/TextView;
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace;->tabFree1:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree1:Landroid/widget/RelativeLayout;

    .line 186
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace;->tabDraw1:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw1:Landroid/widget/RelativeLayout;

    .line 187
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace;->tabDeal1:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal1:Landroid/widget/RelativeLayout;

    .line 188
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace;->tabAll1:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    .line 190
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace;->tabFree2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    .line 191
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace;->tabDraw2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    .line 192
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace;->tabDeal2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    .line 193
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace;->tabAll2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    .line 195
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace;->layoutTextSearch:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->layoutTextSearch:Landroid/widget/RelativeLayout;

    .line 197
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace;->tvSearchCaption:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tvSearchCaption:Landroid/widget/TextView;

    .line 198
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace;->imgCancelSearch:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCancelSearch:Landroid/widget/ImageView;

    .line 200
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->imgCash1:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash1:Landroid/widget/ImageView;

    .line 201
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->imgCash2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash2:Landroid/widget/ImageView;

    .line 202
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->imgCash3:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash3:Landroid/widget/ImageView;

    .line 203
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->imgCash4:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash4:Landroid/widget/ImageView;

    .line 204
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->imgCash5:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash5:Landroid/widget/ImageView;

    .line 205
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->imgCash6:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash6:Landroid/widget/ImageView;

    .line 206
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->imgCash7:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash7:Landroid/widget/ImageView;

    .line 207
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->imgCash8:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash8:Landroid/widget/ImageView;

    .line 208
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->imgCash9:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash9:Landroid/widget/ImageView;

    .line 209
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->imgComma1:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgComma1:Landroid/widget/ImageView;

    .line 210
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->imgComma2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgComma2:Landroid/widget/ImageView;

    .line 212
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/kit55p.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 213
    .local v1, "font":Landroid/graphics/Typeface;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 214
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 215
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 216
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 217
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 218
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tvSearchCaption:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 220
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    sget v4, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->LayoutTabMainHeader:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 222
    .local v0, "LayoutTabMainHeader":Landroid/widget/RelativeLayout;
    new-instance v3, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$1;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree1:Landroid/widget/RelativeLayout;

    new-instance v4, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$2;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$2;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw1:Landroid/widget/RelativeLayout;

    new-instance v4, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal1:Landroid/widget/RelativeLayout;

    new-instance v4, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$4;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$4;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    new-instance v4, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$5;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$5;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCancelSearch:Landroid/widget/ImageView;

    new-instance v4, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$6;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$6;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    return-object v3
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 482
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 486
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 490
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gHandler:Landroid/os/Handler;

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gTabState:I

    .line 494
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree1:Landroid/widget/RelativeLayout;

    .line 495
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw1:Landroid/widget/RelativeLayout;

    .line 496
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal1:Landroid/widget/RelativeLayout;

    .line 497
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll1:Landroid/widget/RelativeLayout;

    .line 499
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabFree2:Landroid/widget/TextView;

    .line 500
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDraw2:Landroid/widget/TextView;

    .line 501
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabDeal2:Landroid/widget/TextView;

    .line 502
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tabAll2:Landroid/widget/TextView;

    .line 504
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->layoutTextSearch:Landroid/widget/RelativeLayout;

    .line 506
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->tvSearchCaption:Landroid/widget/TextView;

    .line 507
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCancelSearch:Landroid/widget/ImageView;

    .line 509
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash1:Landroid/widget/ImageView;

    .line 510
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash2:Landroid/widget/ImageView;

    .line 511
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash3:Landroid/widget/ImageView;

    .line 512
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash4:Landroid/widget/ImageView;

    .line 513
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash5:Landroid/widget/ImageView;

    .line 514
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash6:Landroid/widget/ImageView;

    .line 515
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash7:Landroid/widget/ImageView;

    .line 516
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash8:Landroid/widget/ImageView;

    .line 517
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash9:Landroid/widget/ImageView;

    .line 518
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgComma1:Landroid/widget/ImageView;

    .line 519
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgComma2:Landroid/widget/ImageView;

    .line 521
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    .line 522
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 523
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentCategoryName:Ljava/lang/String;

    .line 524
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPoints:J

    .line 525
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 526
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 527
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 528
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 530
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->img:Landroid/widget/ImageView;

    .line 531
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->nav:Landroid/graphics/Bitmap;

    .line 533
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 465
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 469
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 470
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy|getActivity() != null"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/support/v4/app/Fragment;I)V

    .line 475
    :goto_15
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mLeak:Landroid/view/View;

    .line 478
    return-void

    .line 473
    :cond_20
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy|getActivity() == null"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 537
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 541
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 448
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 452
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->clearPostListener()V

    .line 453
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 437
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 441
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gSDK_INT:I

    .line 443
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getPointFromServer()V

    .line 444
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 545
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 557
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 592
    return-void
.end method

.method public onStart()V
    .registers 11

    .prologue
    const-wide/16 v4, -0x1

    .line 376
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 390
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart #1"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 393
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart #2|gCurrentSearh "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentSearh:Ljava/lang/String;

    invoke-direct {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoSearchListView(Ljava/lang/String;)V

    .line 433
    :cond_35
    :goto_35
    return-void

    .line 395
    :cond_36
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 396
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart #3|gCurrentFilterCategory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->resetTabState()V

    .line 398
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->resetTab()V

    .line 399
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentCategoryName:Ljava/lang/String;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoLoadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 400
    :cond_71
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    .line 401
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart #5|gCurrentFilterCenter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoNearByListView()V

    .line 403
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    const-string v3, ""

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoLoadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 404
    :cond_a9
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 405
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoSponsorListView()V

    .line 406
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    const-string v3, ""

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoLoadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 407
    :cond_cc
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    if-eqz v0, :cond_148

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    .line 408
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart #6|gCurrentFilterMode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 410
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart #7"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoAllListView()V

    goto/16 :goto_35

    .line 412
    :cond_106
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    const-string v1, "draw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 413
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart #8"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoDrawListView()V

    goto/16 :goto_35

    .line 415
    :cond_11c
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    const-string v1, "free_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 416
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart #9"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoFreeListView()V

    goto/16 :goto_35

    .line 418
    :cond_132
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    const-string v1, "deal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 419
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart #10"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoDealListView()V

    goto/16 :goto_35

    .line 424
    :cond_148
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    if-eqz v0, :cond_181

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_181

    .line 425
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart #11|gCurrentFilterSponsor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->resetTab()V

    .line 427
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCategory:Ljava/lang/String;

    const-string v3, ""

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoLoadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 428
    :cond_181
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 429
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart #12|gCurrentFilterPlace "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gCurrentFilterPlace:Ljava/lang/String;

    invoke-direct {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoAllListView(Ljava/lang/String;)V

    goto/16 :goto_35
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 457
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 461
    return-void
.end method

.method public setPointUI(J)V
    .registers 16
    .param p1, "points"    # J

    .prologue
    .line 1056
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/LibUserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash1:Landroid/widget/ImageView;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash2:Landroid/widget/ImageView;

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash3:Landroid/widget/ImageView;

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash4:Landroid/widget/ImageView;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash5:Landroid/widget/ImageView;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash6:Landroid/widget/ImageView;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash7:Landroid/widget/ImageView;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash8:Landroid/widget/ImageView;

    iget-object v10, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgCash9:Landroid/widget/ImageView;

    iget-object v11, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgComma1:Landroid/widget/ImageView;

    iget-object v12, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->imgComma2:Landroid/widget/ImageView;

    invoke-static/range {v0 .. v12}, Lic/buzzebeeslib/util/PointsUtil;->initialPointUI(JLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 1057
    return-void
.end method
