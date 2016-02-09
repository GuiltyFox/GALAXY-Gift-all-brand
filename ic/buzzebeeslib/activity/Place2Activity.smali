.class public Lic/buzzebeeslib/activity/Place2Activity;
.super Landroid/support/v4/app/FragmentActivity;
.source "Place2Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;,
        Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;,
        Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;
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

.field private gAdapter:Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;

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

.field protected locationListener:Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mItemPosition:I

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const-class v0, Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lic/buzzebeeslib/activity/Place2Activity;->TAG:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gTextSearch:Ljava/lang/String;

    .line 79
    const-string v0, "buzzebees.placeslist.fragment"

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->LOGCAT:Ljava/lang/String;

    .line 80
    const-string v0, "buzzebees.placeslist.fragment.lc"

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->LOGCATLC:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gFoundLocation:Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;

    .line 99
    const/16 v0, 0x19

    iput v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListPerPage:I

    .line 101
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsLoadingMore:Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsHasData:Z

    .line 103
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsFoundLocation:Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->mListState:Landroid/os/Parcelable;

    .line 110
    iput v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->mListPosition:I

    .line 111
    iput v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->mItemPosition:I

    .line 131
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->booleanCancelRunnable:Z

    .line 731
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gFetching:Z

    .line 65
    return-void
.end method

.method private ProcessJsonPlace(Ljava/lang/String;Z)V
    .registers 12
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "loadMore"    # Z

    .prologue
    const/16 v8, 0x8

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "count_item":I
    :try_start_3
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_90

    .line 671
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 672
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_4b

    .line 680
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 685
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :goto_1b
    if-eqz v0, :cond_21

    iget v5, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListPerPage:I

    if-ge v0, v5, :cond_ba

    .line 686
    :cond_21
    const/4 v5, 0x0

    iput-boolean v5, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsHasData:Z

    .line 687
    iget-object v5, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_76

    move-result v5

    if-eqz v5, :cond_33

    .line 690
    :try_start_2c
    iget-object v5, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v6, p0, Lic/buzzebeeslib/activity/Place2Activity;->footerListView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_92

    .line 703
    :cond_33
    :goto_33
    :try_start_33
    iget-object v5, p0, Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;

    new-instance v6, Lic/buzzebeeslib/activity/Place2Activity$10;

    invoke-direct {v6, p0, p2}, Lic/buzzebeeslib/activity/Place2Activity$10;-><init>(Lic/buzzebeeslib/activity/Place2Activity;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 721
    const/4 v5, 0x0

    iput-boolean v5, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsLoadingMore:Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_40} :catch_76

    .line 727
    :goto_40
    iget-object v5, p0, Lic/buzzebeeslib/activity/Place2Activity;->gPbLoadingPage:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 728
    iget-object v5, p0, Lic/buzzebeeslib/activity/Place2Activity;->gTvLoadingPage:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 729
    return-void

    .line 674
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_4b
    :try_start_4b
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 675
    .local v4, "json_place_new":Lorg/json/JSONObject;
    iget-object v5, p0, Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;

    new-instance v6, Lic/buzzebeeslib/bean/Place;

    invoke-direct {v6, v4}, Lic/buzzebeeslib/bean/Place;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_59} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_59} :catch_76

    .line 672
    .end local v4    # "json_place_new":Lorg/json/JSONObject;
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 676
    :catch_5c
    move-exception v1

    .line 677
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

    .line 722
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_76
    move-exception v1

    .line 723
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

    .line 682
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_90
    const/4 v0, 0x0

    goto :goto_1b

    .line 691
    :catch_92
    move-exception v1

    .line 692
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_93
    iget-object v5, p0, Lic/buzzebeeslib/activity/Place2Activity;->footerListView:Landroid/view/View;

    sget v6, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 693
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

    .line 697
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_ba
    const/4 v5, 0x1

    iput-boolean v5, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsHasData:Z

    .line 698
    iget-object v5, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v5

    if-nez v5, :cond_33

    .line 699
    iget-object v5, p0, Lic/buzzebeeslib/activity/Place2Activity;->footerListView:Landroid/view/View;

    sget v6, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_d1} :catch_76

    goto/16 :goto_33
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 667
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/activity/Place2Activity;->ProcessJsonPlace(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$10(Lic/buzzebeeslib/activity/Place2Activity;D)V
    .registers 3

    .prologue
    .line 96
    iput-wide p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLon:D

    return-void
.end method

.method static synthetic access$11(Lic/buzzebeeslib/activity/Place2Activity;)D
    .registers 3

    .prologue
    .line 95
    iget-wide v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLat:D

    return-wide v0
.end method

.method static synthetic access$12(Lic/buzzebeeslib/activity/Place2Activity;)D
    .registers 3

    .prologue
    .line 96
    iget-wide v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLon:D

    return-wide v0
.end method

.method static synthetic access$13(Lic/buzzebeeslib/activity/Place2Activity;ZDD)V
    .registers 6

    .prologue
    .line 733
    invoke-direct/range {p0 .. p5}, Lic/buzzebeeslib/activity/Place2Activity;->fetchPlaces(ZDD)V

    return-void
.end method

.method static synthetic access$14(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable5:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$15()Ljava/lang/String;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lic/buzzebeeslib/activity/Place2Activity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lic/buzzebeeslib/activity/Place2Activity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/activity/Place2Activity;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$18(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$19(Lic/buzzebeeslib/activity/Place2Activity;)V
    .registers 1

    .prologue
    .line 508
    invoke-direct {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getLocation()V

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 854
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/Place2Activity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20(Lic/buzzebeeslib/activity/Place2Activity;)Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gAdapter:Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;

    return-object v0
.end method

.method static synthetic access$21(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$22(Lic/buzzebeeslib/activity/Place2Activity;)Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$23(Lic/buzzebeeslib/activity/Place2Activity;)Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsHasData:Z

    return v0
.end method

.method static synthetic access$24(Lic/buzzebeeslib/activity/Place2Activity;)Z
    .registers 2

    .prologue
    .line 731
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gFetching:Z

    return v0
.end method

.method static synthetic access$25(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$26(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$27(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$28(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gTextSearch:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29(Lic/buzzebeeslib/activity/Place2Activity;Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gAdapter:Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;

    return-void
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gTvLoadingPage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$30(Lic/buzzebeeslib/activity/Place2Activity;)Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gFoundLocation:Z

    return v0
.end method

.method static synthetic access$31(Lic/buzzebeeslib/activity/Place2Activity;)V
    .registers 1

    .prologue
    .line 615
    invoke-direct {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getLocationByGPS()V

    return-void
.end method

.method static synthetic access$32(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable0:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$33(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable0:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$34(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable2:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$35(Lic/buzzebeeslib/activity/Place2Activity;)I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gParamPAGE_MODE:I

    return v0
.end method

.method static synthetic access$36(Lic/buzzebeeslib/activity/Place2Activity;)Lic/buzzebeeslib/bean/Campaign;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-object v0
.end method

.method static synthetic access$37(Lic/buzzebeeslib/activity/Place2Activity;)I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gTabState:I

    return v0
.end method

.method static synthetic access$38(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gTextSearch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$39(Lic/buzzebeeslib/activity/Place2Activity;Z)V
    .registers 2

    .prologue
    .line 101
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsLoadingMore:Z

    return-void
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gPbLoadingPage:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$40(Lic/buzzebeeslib/activity/Place2Activity;J)V
    .registers 3

    .prologue
    .line 98
    iput-wide p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gLastRank:J

    return-void
.end method

.method static synthetic access$41(Lic/buzzebeeslib/activity/Place2Activity;)J
    .registers 3

    .prologue
    .line 98
    iget-wide v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gLastRank:J

    return-wide v0
.end method

.method static synthetic access$42(Lic/buzzebeeslib/activity/Place2Activity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/Place2Activity;)Z
    .registers 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->booleanCancelRunnable:Z

    return v0
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable4:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/Place2Activity;Z)V
    .registers 2

    .prologue
    .line 731
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gFetching:Z

    return-void
.end method

.method static synthetic access$8(Lic/buzzebeeslib/activity/Place2Activity;Z)V
    .registers 2

    .prologue
    .line 83
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gFoundLocation:Z

    return-void
.end method

.method static synthetic access$9(Lic/buzzebeeslib/activity/Place2Activity;D)V
    .registers 3

    .prologue
    .line 95
    iput-wide p1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLat:D

    return-void
.end method

.method private fetchPlaces(ZDD)V
    .registers 14
    .param p1, "pLoadMore"    # Z
    .param p2, "lat"    # D
    .param p4, "lon"    # D

    .prologue
    .line 735
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gFetching:Z

    if-eqz v0, :cond_c

    .line 736
    const-string v0, "buzzebees.placeslist.fragment"

    const-string v1, "if (gFetching == true) {// do nothing..."

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_b
    return-void

    .line 738
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gFetching:Z

    .line 739
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

    .line 741
    if-nez p1, :cond_49

    .line 742
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/Place2Activity$11;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/Place2Activity$11;-><init>(Lic/buzzebeeslib/activity/Place2Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 753
    :cond_49
    iget-object v7, p0, Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;

    new-instance v0, Lic/buzzebeeslib/activity/Place2Activity$12;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lic/buzzebeeslib/activity/Place2Activity$12;-><init>(Lic/buzzebeeslib/activity/Place2Activity;DDZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private getLocation()V
    .registers 3

    .prologue
    .line 509
    const-string v0, "buzzebees.places"

    const-string v1, "public void getLocation() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    new-instance v0, Lic/buzzebeeslib/activity/Place2Activity$6;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/Place2Activity$6;-><init>(Lic/buzzebeeslib/activity/Place2Activity;)V

    .line 612
    invoke-virtual {v0}, Lic/buzzebeeslib/activity/Place2Activity$6;->start()V

    .line 613
    return-void
.end method

.method private getLocationByGPS()V
    .registers 9

    .prologue
    .line 617
    :try_start_0
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/Place2Activity$7;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/Place2Activity$7;-><init>(Lic/buzzebeeslib/activity/Place2Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 626
    new-instance v0, Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lic/buzzebeeslib/util/GPSTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gps:Lic/buzzebeeslib/util/GPSTracker;

    .line 629
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->canGetLocation()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 630
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLat:D

    .line 631
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLon:D

    .line 633
    const-string v0, "buzzebees.placeslist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gCurrentLat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLat:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v0, "buzzebees.placeslist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gCurrentLon "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLon:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/4 v1, 0x0

    iget-wide v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLat:D

    iget-wide v4, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLon:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lic/buzzebeeslib/activity/Place2Activity;->fetchPlaces(ZDD)V

    .line 637
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->stopUsingGPS()V

    .line 665
    :goto_67
    return-void

    .line 642
    :cond_68
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->showSettingsAlert()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_67

    .line 644
    :catch_6e
    move-exception v6

    .line 645
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "Error while get your location(GPS)!"

    .line 646
    .local v7, "error":Ljava/lang/String;
    invoke-direct {p0, v7}, Lic/buzzebeeslib/activity/Place2Activity;->showToast(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/Place2Activity$8;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/Place2Activity$8;-><init>(Lic/buzzebeeslib/activity/Place2Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 656
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v1, Lic/buzzebeeslib/activity/Place2Activity$9;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/Place2Activity$9;-><init>(Lic/buzzebeeslib/activity/Place2Activity;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable3:Ljava/lang/Runnable;

    .line 663
    const-wide/16 v2, 0x3e8

    .line 656
    invoke-virtual {v0, v1, v2, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_67
.end method

.method private initialParam()V
    .registers 4

    .prologue
    .line 176
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PAGE_MODE_ACTIVITY"

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gParamPAGE_MODE:I

    .line 179
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Campaign;

    iput-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 180
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 458
    const-string v0, "buzzebees.places"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 460
    const-string v0, "gArrayPlace"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;

    .line 461
    const-string v0, "gCurrentPlace"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Place;

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentPlace:Lic/buzzebeeslib/bean/Place;

    .line 462
    const-string v0, "gLoadingMore"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsLoadingMore:Z

    .line 463
    const-string v0, "gLastRank"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gLastRank:J

    .line 464
    const-string v0, "gListPerPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListPerPage:I

    .line 465
    const-string v0, "gHasData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsHasData:Z

    .line 466
    const-string v0, "gCurrentLat"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLat:D

    .line 467
    const-string v0, "gCurrentLon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLon:D

    .line 470
    :try_start_53
    invoke-direct {p0}, Lic/buzzebeeslib/activity/Place2Activity;->setLayoutByData()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_6f

    .line 477
    :goto_56
    :try_start_56
    const-string v0, "listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->mListState:Landroid/os/Parcelable;

    .line 478
    const-string v0, "listPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->mListPosition:I

    .line 479
    const-string v0, "itemPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->mItemPosition:I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6e} :catch_71

    .line 486
    :cond_6e
    :goto_6e
    return-void

    .line 471
    :catch_6f
    move-exception v0

    goto :goto_56

    .line 480
    :catch_71
    move-exception v0

    goto :goto_6e
.end method

.method private setLayoutByData()V
    .registers 3

    .prologue
    .line 489
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/Place2Activity$5;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/Place2Activity$5;-><init>(Lic/buzzebeeslib/activity/Place2Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 855
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 856
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/Place2Activity$13;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/Place2Activity$13;-><init>(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 864
    :cond_e
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;

    .line 147
    iput-boolean v8, p0, Lic/buzzebeeslib/activity/Place2Activity;->booleanCancelRunnable:Z

    .line 149
    invoke-direct {p0}, Lic/buzzebeeslib/activity/Place2Activity;->initialParam()V

    .line 152
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 153
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 155
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "cache_places"

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 157
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 158
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 162
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 163
    .local v5, "width":I
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 165
    .local v2, "height":I
    if-le v2, v5, :cond_70

    .end local v2    # "height":I
    :goto_4a
    div-int/lit8 v3, v2, 0x2

    .line 166
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lic/buzzebeeslib/activity/Place2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 167
    iget-object v6, p0, Lic/buzzebeeslib/activity/Place2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 168
    iget-object v6, p0, Lic/buzzebeeslib/activity/Place2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 169
    iget-object v6, p0, Lic/buzzebeeslib/activity/Place2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v6, v8}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 172
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/Place2Activity;->onCreateView(Landroid/os/Bundle;)V

    .line 173
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_70
    move v2, v5

    .line 165
    goto :goto_4a
.end method

.method public onCreateView(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    sget v3, Lic/buzzebeeslib/R$layout;->bz_place2:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/Place2Activity;->setContentView(I)V

    .line 195
    sget v3, Lic/buzzebeeslib/R$id;->pbLoadingPage:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/Place2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gPbLoadingPage:Landroid/widget/ProgressBar;

    .line 196
    sget v3, Lic/buzzebeeslib/R$id;->tvLoadingPage:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/Place2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gTvLoadingPage:Landroid/widget/TextView;

    .line 197
    sget v3, Lic/buzzebeeslib/R$id;->pull_refresh_list:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/Place2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/control/PullToRefreshListView;

    iput-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    .line 198
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$layout;->bz_list_footer:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->footerListView:Landroid/view/View;

    .line 200
    sget v3, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/Place2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 201
    .local v2, "tvPageHeader":Landroid/widget/TextView;
    sget v3, Lic/buzzebeeslib/R$id;->etTextSearch:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/Place2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 207
    .local v0, "etTextSearch":Landroid/widget/EditText;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 208
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/EditText;Landroid/content/Context;)V

    .line 209
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gTvLoadingPage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 211
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v3

    if-nez v3, :cond_68

    .line 212
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity;->footerListView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/control/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 215
    :cond_68
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v4, Lic/buzzebeeslib/activity/Place2Activity$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/Place2Activity$1;-><init>(Lic/buzzebeeslib/activity/Place2Activity;)V

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnRefreshListener(Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;)V

    .line 222
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v4, Lic/buzzebeeslib/activity/Place2Activity$2;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/Place2Activity$2;-><init>(Lic/buzzebeeslib/activity/Place2Activity;)V

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 257
    if-eqz p1, :cond_81

    .line 258
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/Place2Activity;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 261
    :cond_81
    new-instance v3, Lic/buzzebeeslib/activity/Place2Activity$3;

    invoke-direct {v3, p0, v0}, Lic/buzzebeeslib/activity/Place2Activity$3;-><init>(Lic/buzzebeeslib/activity/Place2Activity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 285
    sget v3, Lic/buzzebeeslib/R$id;->imgDeleteTextSearch:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/Place2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 286
    .local v1, "imgDeleteTextSearch":Landroid/widget/ImageView;
    new-instance v3, Lic/buzzebeeslib/activity/Place2Activity$4;

    invoke-direct {v3, p0, v0}, Lic/buzzebeeslib/activity/Place2Activity$4;-><init>(Lic/buzzebeeslib/activity/Place2Activity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    invoke-direct {p0}, Lic/buzzebeeslib/activity/Place2Activity;->getLocation()V

    .line 297
    return-void
.end method

.method public onDestroy()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 355
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 360
    iput-boolean v6, p0, Lic/buzzebeeslib/activity/Place2Activity;->booleanCancelRunnable:Z

    .line 361
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 362
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 363
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 364
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable4:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 365
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable5:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 367
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 369
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 371
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->lm:Landroid/location/LocationManager;

    .line 373
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->locationListener:Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;

    .line 378
    iput v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gTabState:I

    .line 379
    iput v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gParamPAGE_MODE:I

    .line 380
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 381
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gTextSearch:Ljava/lang/String;

    .line 382
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;

    .line 384
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    .line 386
    iput-boolean v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gFoundLocation:Z

    .line 388
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->footerListView:Landroid/view/View;

    .line 389
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gPbLoadingPage:Landroid/widget/ProgressBar;

    .line 390
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gTvLoadingPage:Landroid/widget/TextView;

    .line 392
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gAdapter:Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;

    .line 393
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;

    .line 394
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentPlace:Lic/buzzebeeslib/bean/Place;

    .line 396
    iput-wide v4, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLat:D

    .line 397
    iput-wide v4, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLon:D

    .line 398
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable:Ljava/lang/Runnable;

    .line 399
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->gLastRank:J

    .line 401
    iput-boolean v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsLoadingMore:Z

    .line 402
    iput-boolean v6, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsHasData:Z

    .line 403
    iput-boolean v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsFoundLocation:Z

    .line 405
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->mListState:Landroid/os/Parcelable;

    .line 406
    iput v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->mListPosition:I

    .line 407
    iput v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->mItemPosition:I

    .line 409
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gps:Lic/buzzebeeslib/util/GPSTracker;

    .line 411
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gDialog:Landroid/app/ProgressDialog;

    .line 413
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable1:Ljava/lang/Runnable;

    .line 414
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable2:Ljava/lang/Runnable;

    .line 415
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable3:Ljava/lang/Runnable;

    .line 416
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable4:Ljava/lang/Runnable;

    .line 417
    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gRunnable5:Ljava/lang/Runnable;

    .line 418
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 334
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 339
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 340
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 342
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->clearPostListener()V

    .line 343
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 324
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 329
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 330
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 422
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 423
    const-string v2, "buzzebees.places"

    const-string v3, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    const-string v2, "gArrayPlace"

    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 430
    const-string v2, "gCurrentPlace"

    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentPlace:Lic/buzzebeeslib/bean/Place;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 431
    const-string v2, "gIsLoadingMore"

    iget-boolean v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsLoadingMore:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 432
    const-string v2, "gLastRank"

    iget-wide v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gLastRank:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 433
    const-string v2, "gListPerPage"

    iget v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListPerPage:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    const-string v2, "gIsHasData"

    iget-boolean v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gIsHasData:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 435
    const-string v2, "gCurrentLat"

    iget-wide v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLat:D

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 436
    const-string v2, "gCurrentLon"

    iget-wide v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLon:D

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 441
    :try_start_49
    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->mListState:Landroid/os/Parcelable;

    .line 442
    const-string v2, "listState"

    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 445
    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->mListPosition:I

    .line 446
    const-string v2, "listPosition"

    iget v3, p0, Lic/buzzebeeslib/activity/Place2Activity;->mListPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 449
    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 450
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_7a

    :goto_70
    iput v1, p0, Lic/buzzebeeslib/activity/Place2Activity;->mItemPosition:I

    .line 451
    const-string v1, "itemPosition"

    iget v2, p0, Lic/buzzebeeslib/activity/Place2Activity;->mItemPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    .end local v0    # "itemView":Landroid/view/View;
    :goto_79
    return-void

    .line 450
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_7a
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_7d} :catch_7f

    move-result v1

    goto :goto_70

    .line 452
    .end local v0    # "itemView":Landroid/view/View;
    :catch_7f
    move-exception v1

    goto :goto_79
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 316
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 320
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 347
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 351
    return-void
.end method
