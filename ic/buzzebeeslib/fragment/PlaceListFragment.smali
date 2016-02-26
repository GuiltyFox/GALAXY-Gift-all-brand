.class public Lic/buzzebeeslib/fragment/PlaceListFragment;
.super Landroid/support/v4/app/Fragment;
.source "PlaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;,
        Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;,
        Lic/buzzebeeslib/fragment/PlaceListFragment$placesRequestListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_places"

.field private static final ITEM_POSITION_KEY:Ljava/lang/String; = "itemPosition"

.field private static final LIST_POSITION_KEY:Ljava/lang/String; = "listPosition"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "listState"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private final LOGCATLC:Ljava/lang/String;

.field private booleanCancelRunnable:Z

.field private footerListView:Landroid/view/View;

.field private gAdapter:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

.field private gArrayPlace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/Place;",
            ">;"
        }
    .end annotation
.end field

.field private gCurrentLat:D

.field private gCurrentLon:D

.field private gCurrentPlace:Lic/buzzebeeslib/bean/Place;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gFetching:Z

.field private gFoundLocation:Z

.field private gHandler:Landroid/os/Handler;

.field private gIsFoundLocation:Z

.field private gIsHasData:Z

.field private gIsLoadingMore:Z

.field private gLastRank:J

.field protected gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

.field private gListPerPage:I

.field private gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

.field private gParamPAGE_MODE:I

.field private gPbLoadingPage:Landroid/widget/ProgressBar;

.field private gRunnable:Ljava/lang/Runnable;

.field private gRunnable0:Ljava/lang/Runnable;

.field private gRunnable1:Ljava/lang/Runnable;

.field private gRunnable2:Ljava/lang/Runnable;

.field private gRunnable3:Ljava/lang/Runnable;

.field private gRunnable4:Ljava/lang/Runnable;

.field private gRunnable5:Ljava/lang/Runnable;

.field private gTabState:I

.field private gTextSearch:Ljava/lang/String;

.field private gTvLoadingPage:Landroid/widget/TextView;

.field private gps:Lic/buzzebeeslib/util/GPSTracker;

.field protected lm:Landroid/location/LocationManager;

.field protected locationListener:Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mItemPosition:I

.field private mLeak:Landroid/view/View;

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const-class v0, Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->TAG:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gTextSearch:Ljava/lang/String;

    .line 75
    const-string v0, "buzzebees.placeslist.fragment"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->LOGCAT:Ljava/lang/String;

    .line 76
    const-string v0, "buzzebees.placeslist.fragment.lc"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->LOGCATLC:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gFoundLocation:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;

    .line 95
    const/16 v0, 0x19

    iput v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListPerPage:I

    .line 97
    iput-boolean v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsLoadingMore:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsHasData:Z

    .line 99
    iput-boolean v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsFoundLocation:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mListState:Landroid/os/Parcelable;

    .line 106
    iput v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mListPosition:I

    .line 107
    iput v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mItemPosition:I

    .line 127
    iput-boolean v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->booleanCancelRunnable:Z

    .line 730
    iput-boolean v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gFetching:Z

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;

    .line 131
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILic/buzzebeeslib/bean/Campaign;)V
    .registers 7
    .param p1, "pTabState"    # I
    .param p2, "pTextSearch"    # Ljava/lang/String;
    .param p3, "pParamPAGE_MODE"    # I
    .param p4, "pParamCampaign"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gTextSearch:Ljava/lang/String;

    .line 75
    const-string v0, "buzzebees.placeslist.fragment"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->LOGCAT:Ljava/lang/String;

    .line 76
    const-string v0, "buzzebees.placeslist.fragment.lc"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->LOGCATLC:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gFoundLocation:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;

    .line 95
    const/16 v0, 0x19

    iput v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListPerPage:I

    .line 97
    iput-boolean v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsLoadingMore:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsHasData:Z

    .line 99
    iput-boolean v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsFoundLocation:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mListState:Landroid/os/Parcelable;

    .line 106
    iput v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mListPosition:I

    .line 107
    iput v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mItemPosition:I

    .line 127
    iput-boolean v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->booleanCancelRunnable:Z

    .line 730
    iput-boolean v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gFetching:Z

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;

    .line 135
    iput p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gTabState:I

    .line 136
    iput p3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gParamPAGE_MODE:I

    .line 137
    iput-object p4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 138
    iput-object p2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gTextSearch:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private ProcessJsonPlace(Ljava/lang/String;Z)V
    .registers 12
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "loadMore"    # Z

    .prologue
    const/16 v8, 0x8

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "count_item":I
    :try_start_3
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_90

    .line 670
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 671
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_4b

    .line 679
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 684
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :goto_1b
    if-eqz v0, :cond_21

    iget v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListPerPage:I

    if-ge v0, v5, :cond_ba

    .line 685
    :cond_21
    const/4 v5, 0x0

    iput-boolean v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsHasData:Z

    .line 686
    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_76

    move-result v5

    if-eqz v5, :cond_33

    .line 689
    :try_start_2c
    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->footerListView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_92

    .line 702
    :cond_33
    :goto_33
    :try_start_33
    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;

    new-instance v6, Lic/buzzebeeslib/fragment/PlaceListFragment$8;

    invoke-direct {v6, p0, p2}, Lic/buzzebeeslib/fragment/PlaceListFragment$8;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 720
    const/4 v5, 0x0

    iput-boolean v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsLoadingMore:Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_40} :catch_76

    .line 726
    :goto_40
    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gPbLoadingPage:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 727
    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gTvLoadingPage:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 728
    return-void

    .line 673
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_4b
    :try_start_4b
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 674
    .local v4, "json_place_new":Lorg/json/JSONObject;
    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;

    new-instance v6, Lic/buzzebeeslib/bean/Place;

    invoke-direct {v6, v4}, Lic/buzzebeeslib/bean/Place;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_59} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_59} :catch_76

    .line 671
    .end local v4    # "json_place_new":Lorg/json/JSONObject;
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 675
    :catch_5c
    move-exception v1

    .line 676
    .local v1, "e":Lorg/json/JSONException;
    :try_start_5d
    const-string v5, "buzzebees.placeslist.fragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(placesRequestListener|onComplete|for|JSONException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_75} :catch_76

    goto :goto_59

    .line 721
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_76
    move-exception v1

    .line 722
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "buzzebees.placeslist.fragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(Exception|ProcessJsonPlace):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 681
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_90
    const/4 v0, 0x0

    goto :goto_1b

    .line 690
    :catch_92
    move-exception v1

    .line 691
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_93
    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->footerListView:Landroid/view/View;

    sget v6, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 692
    const-string v5, "buzzebees.placeslist.fragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(Exception|removeFooterView):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 696
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_ba
    const/4 v5, 0x1

    iput-boolean v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsHasData:Z

    .line 697
    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v5

    if-nez v5, :cond_33

    .line 698
    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->footerListView:Landroid/view/View;

    sget v6, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_d1} :catch_76

    goto/16 :goto_33
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 666
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->ProcessJsonPlace(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$10(Lic/buzzebeeslib/fragment/PlaceListFragment;D)V
    .registers 4

    .prologue
    .line 92
    iput-wide p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLon:D

    return-void
.end method

.method static synthetic access$11(Lic/buzzebeeslib/fragment/PlaceListFragment;)D
    .registers 3

    .prologue
    .line 91
    iget-wide v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLat:D

    return-wide v0
.end method

.method static synthetic access$12(Lic/buzzebeeslib/fragment/PlaceListFragment;)D
    .registers 3

    .prologue
    .line 92
    iget-wide v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLon:D

    return-wide v0
.end method

.method static synthetic access$13(Lic/buzzebeeslib/fragment/PlaceListFragment;ZDD)V
    .registers 6

    .prologue
    .line 732
    invoke-direct/range {p0 .. p5}, Lic/buzzebeeslib/fragment/PlaceListFragment;->fetchPlaces(ZDD)V

    return-void
.end method

.method static synthetic access$14(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable5:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$15()Ljava/lang/String;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lic/buzzebeeslib/fragment/PlaceListFragment;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/fragment/PlaceListFragment;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$18(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$19(Lic/buzzebeeslib/fragment/PlaceListFragment;)V
    .registers 1

    .prologue
    .line 502
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getLocation()V

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20(Lic/buzzebeeslib/fragment/PlaceListFragment;)Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    return-object v0
.end method

.method static synthetic access$21(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$22(Lic/buzzebeeslib/fragment/PlaceListFragment;)Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$23(Lic/buzzebeeslib/fragment/PlaceListFragment;)Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsHasData:Z

    return v0
.end method

.method static synthetic access$24(Lic/buzzebeeslib/fragment/PlaceListFragment;)Z
    .registers 2

    .prologue
    .line 730
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gFetching:Z

    return v0
.end method

.method static synthetic access$25(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$26(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$27(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/view/View;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$28(Lic/buzzebeeslib/fragment/PlaceListFragment;Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    return-void
.end method

.method static synthetic access$29(Lic/buzzebeeslib/fragment/PlaceListFragment;)Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gFoundLocation:Z

    return v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gTvLoadingPage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$30(Lic/buzzebeeslib/fragment/PlaceListFragment;)V
    .registers 1

    .prologue
    .line 611
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getLocationByGPS()V

    return-void
.end method

.method static synthetic access$31(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable0:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$32(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable0:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$33(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable2:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$34(Lic/buzzebeeslib/fragment/PlaceListFragment;)I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gParamPAGE_MODE:I

    return v0
.end method

.method static synthetic access$35(Lic/buzzebeeslib/fragment/PlaceListFragment;)Lic/buzzebeeslib/bean/Campaign;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-object v0
.end method

.method static synthetic access$36(Lic/buzzebeeslib/fragment/PlaceListFragment;)I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gTabState:I

    return v0
.end method

.method static synthetic access$37(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gTextSearch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$38(Lic/buzzebeeslib/fragment/PlaceListFragment;Z)V
    .registers 2

    .prologue
    .line 97
    iput-boolean p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsLoadingMore:Z

    return-void
.end method

.method static synthetic access$39(Lic/buzzebeeslib/fragment/PlaceListFragment;J)V
    .registers 4

    .prologue
    .line 94
    iput-wide p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gLastRank:J

    return-void
.end method

.method static synthetic access$4(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gPbLoadingPage:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$40(Lic/buzzebeeslib/fragment/PlaceListFragment;)J
    .registers 3

    .prologue
    .line 94
    iget-wide v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gLastRank:J

    return-wide v0
.end method

.method static synthetic access$41(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$5(Lic/buzzebeeslib/fragment/PlaceListFragment;)Z
    .registers 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->booleanCancelRunnable:Z

    return v0
.end method

.method static synthetic access$6(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable4:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$7(Lic/buzzebeeslib/fragment/PlaceListFragment;Z)V
    .registers 2

    .prologue
    .line 730
    iput-boolean p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gFetching:Z

    return-void
.end method

.method static synthetic access$8(Lic/buzzebeeslib/fragment/PlaceListFragment;Z)V
    .registers 2

    .prologue
    .line 79
    iput-boolean p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gFoundLocation:Z

    return-void
.end method

.method static synthetic access$9(Lic/buzzebeeslib/fragment/PlaceListFragment;D)V
    .registers 4

    .prologue
    .line 91
    iput-wide p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLat:D

    return-void
.end method

.method private fetchPlaces(ZDD)V
    .registers 14
    .param p1, "pLoadMore"    # Z
    .param p2, "lat"    # D
    .param p4, "lon"    # D

    .prologue
    .line 733
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 734
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gFetching:Z

    if-eqz v0, :cond_12

    .line 735
    const-string v0, "buzzebees.placeslist.fragment"

    const-string v1, "if (gFetching == true) {// do nothing..."

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_11
    :goto_11
    return-void

    .line 737
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gFetching:Z

    .line 738
    const-string v0, "buzzebees.placeslist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchPlaces("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    if-nez p1, :cond_4f

    .line 741
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceListFragment$9;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$9;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 752
    :cond_4f
    iget-object v7, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;

    new-instance v0, Lic/buzzebeeslib/fragment/PlaceListFragment$10;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lic/buzzebeeslib/fragment/PlaceListFragment$10;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;DDZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11
.end method

.method private getLocation()V
    .registers 3

    .prologue
    .line 503
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;

    if-eqz v0, :cond_19

    .line 504
    const-string v0, "buzzebees.places"

    const-string v1, "public void getLocation() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance v0, Lic/buzzebeeslib/fragment/PlaceListFragment$4;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;)V

    .line 607
    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$4;->start()V

    .line 609
    :cond_19
    return-void
.end method

.method private getLocationByGPS()V
    .registers 9

    .prologue
    .line 612
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 615
    :try_start_6
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceListFragment$5;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$5;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 624
    new-instance v0, Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lic/buzzebeeslib/util/GPSTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    .line 627
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->canGetLocation()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 628
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLat:D

    .line 629
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLon:D

    .line 631
    const-string v0, "buzzebees.placeslist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gCurrentLat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLat:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v0, "buzzebees.placeslist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gCurrentLon "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLon:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v1, 0x0

    iget-wide v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLat:D

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLon:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lic/buzzebeeslib/fragment/PlaceListFragment;->fetchPlaces(ZDD)V

    .line 635
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->stopUsingGPS()V

    .line 664
    :cond_71
    :goto_71
    return-void

    .line 640
    :cond_72
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->showSettingsAlert()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_77} :catch_78

    goto :goto_71

    .line 642
    :catch_78
    move-exception v6

    .line 643
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "Error while get your location(GPS)!"

    .line 644
    .local v7, "error":Ljava/lang/String;
    invoke-direct {p0, v7}, Lic/buzzebeeslib/fragment/PlaceListFragment;->showToast(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceListFragment$6;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$6;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 654
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceListFragment$7;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$7;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;)V

    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable3:Ljava/lang/Runnable;

    .line 661
    const-wide/16 v2, 0x3e8

    .line 654
    invoke-virtual {v0, v1, v2, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_71
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 450
    const-string v0, "buzzebees.places"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 452
    const-string v0, "gArrayPlace"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;

    .line 453
    const-string v0, "gCurrentPlace"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Place;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentPlace:Lic/buzzebeeslib/bean/Place;

    .line 454
    const-string v0, "gLoadingMore"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsLoadingMore:Z

    .line 455
    const-string v0, "gLastRank"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gLastRank:J

    .line 456
    const-string v0, "gListPerPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListPerPage:I

    .line 457
    const-string v0, "gHasData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsHasData:Z

    .line 458
    const-string v0, "gCurrentLat"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLat:D

    .line 459
    const-string v0, "gCurrentLon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLon:D

    .line 462
    :try_start_53
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->setLayoutByData()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_6f

    .line 469
    :goto_56
    :try_start_56
    const-string v0, "listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mListState:Landroid/os/Parcelable;

    .line 470
    const-string v0, "listPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mListPosition:I

    .line 471
    const-string v0, "itemPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mItemPosition:I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6e} :catch_71

    .line 478
    :cond_6e
    :goto_6e
    return-void

    .line 463
    :catch_6f
    move-exception v0

    goto :goto_56

    .line 472
    :catch_71
    move-exception v0

    goto :goto_6e
.end method

.method private setLayoutByData()V
    .registers 3

    .prologue
    .line 481
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 482
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceListFragment$3;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$3;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    :cond_10
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 857
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 858
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceListFragment$11;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/PlaceListFragment$11;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 866
    :cond_10
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 282
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getLocation()V

    .line 283
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 151
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    iput-boolean v8, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->booleanCancelRunnable:Z

    .line 167
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/fragment/PlaceListFragment;->setRetainInstance(Z)V

    .line 170
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 171
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 173
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "cache_places"

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 175
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 176
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 180
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 181
    .local v5, "width":I
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 183
    .local v2, "height":I
    if-le v2, v5, :cond_7f

    .end local v2    # "height":I
    :goto_54
    div-int/lit8 v3, v2, 0x2

    .line 184
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 185
    iget-object v6, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 186
    iget-object v6, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 187
    iget-object v6, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v6, v8}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 196
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_7f
    move v2, v5

    .line 183
    goto :goto_54
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    sget v0, Lic/buzzebeeslib/R$layout;->bz_place_fragment_list:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mLeak:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$idPlaces3PullToRefresh;->pbLoadingPage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gPbLoadingPage:Landroid/widget/ProgressBar;

    .line 213
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$idPlaces3PullToRefresh;->tvLoadingPage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gTvLoadingPage:Landroid/widget/TextView;

    .line 214
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$idPlaces3PullToRefresh;->pull_refresh_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/PullToRefreshListView;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    .line 215
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$layout;->bz_list_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->footerListView:Landroid/view/View;

    .line 217
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_4d

    .line 218
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->footerListView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 221
    :cond_4d
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceListFragment$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$1;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnRefreshListener(Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;)V

    .line 228
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceListFragment$2;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$2;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 263
    if-eqz p3, :cond_66

    .line 264
    invoke-direct {p0, p3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 267
    :cond_66
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mLeak:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 346
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 351
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 353
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 355
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->lm:Landroid/location/LocationManager;

    .line 357
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->locationListener:Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;

    .line 362
    iput v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gTabState:I

    .line 363
    iput v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gParamPAGE_MODE:I

    .line 364
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 365
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gTextSearch:Ljava/lang/String;

    .line 366
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;

    .line 368
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    .line 370
    iput-boolean v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gFoundLocation:Z

    .line 372
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->footerListView:Landroid/view/View;

    .line 373
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gPbLoadingPage:Landroid/widget/ProgressBar;

    .line 374
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gTvLoadingPage:Landroid/widget/TextView;

    .line 376
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    .line 377
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;

    .line 378
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentPlace:Lic/buzzebeeslib/bean/Place;

    .line 380
    iput-wide v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLat:D

    .line 381
    iput-wide v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLon:D

    .line 382
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable:Ljava/lang/Runnable;

    .line 383
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gLastRank:J

    .line 385
    iput-boolean v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsLoadingMore:Z

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsHasData:Z

    .line 387
    iput-boolean v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsFoundLocation:Z

    .line 389
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mListState:Landroid/os/Parcelable;

    .line 390
    iput v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mListPosition:I

    .line 391
    iput v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mItemPosition:I

    .line 393
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    .line 395
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gDialog:Landroid/app/ProgressDialog;

    .line 397
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable1:Ljava/lang/Runnable;

    .line 398
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable2:Ljava/lang/Runnable;

    .line 399
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable3:Ljava/lang/Runnable;

    .line 400
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable4:Ljava/lang/Runnable;

    .line 401
    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable5:Ljava/lang/Runnable;

    .line 402
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 326
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->booleanCancelRunnable:Z

    .line 332
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 333
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 334
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 335
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable4:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 336
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gRunnable5:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 338
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 339
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/support/v4/app/Fragment;I)V

    .line 341
    :cond_34
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mLeak:Landroid/view/View;

    .line 342
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 406
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 410
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 305
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 310
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 311
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 313
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->clearPostListener()V

    .line 314
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 295
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 300
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 301
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 414
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 415
    const-string v2, "buzzebees.places"

    const-string v3, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 421
    const-string v2, "gArrayPlace"

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 422
    const-string v2, "gCurrentPlace"

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentPlace:Lic/buzzebeeslib/bean/Place;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 423
    const-string v2, "gIsLoadingMore"

    iget-boolean v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsLoadingMore:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 424
    const-string v2, "gLastRank"

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gLastRank:J

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 425
    const-string v2, "gListPerPage"

    iget v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListPerPage:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string v2, "gIsHasData"

    iget-boolean v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gIsHasData:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 427
    const-string v2, "gCurrentLat"

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLat:D

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 428
    const-string v2, "gCurrentLon"

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLon:D

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 433
    :try_start_49
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mListState:Landroid/os/Parcelable;

    .line 434
    const-string v2, "listState"

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 437
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mListPosition:I

    .line 438
    const-string v2, "listPosition"

    iget v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mListPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 442
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_7a

    :goto_70
    iput v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mItemPosition:I

    .line 443
    const-string v1, "itemPosition"

    iget v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment;->mItemPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    .end local v0    # "itemView":Landroid/view/View;
    :goto_79
    return-void

    .line 442
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_7a
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_7d} :catch_7f

    move-result v1

    goto :goto_70

    .line 444
    .end local v0    # "itemView":Landroid/view/View;
    :catch_7f
    move-exception v1

    goto :goto_79
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 287
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 291
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 318
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 322
    return-void
.end method
