.class public Lic/buzzebeeslib/activity/PurchasingListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PurchasingListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;,
        Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;,
        Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;,
        Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;,
        Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;,
        Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;,
        Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;,
        Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_market"

.field private static final ITEM_POSITION_KEY:Ljava/lang/String; = "itemPosition"

.field private static final LIST_POSITION_KEY:Ljava/lang/String; = "listPosition"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "listState"

.field protected static jsonArray:Lorg/json/JSONArray;


# instance fields
.field private RC_MAP_LOCATION:I

.field private TAG:Ljava/lang/String;

.field private etTextSearch:Landroid/widget/EditText;

.field private footerListView:Landroid/view/View;

.field private gAdapter:Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

.field private gAdapterCategory:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

.field private gArrayListPurchasing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/Purchasing;",
            ">;"
        }
    .end annotation
.end field

.field private gCampaignCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignCategory;",
            ">;"
        }
    .end annotation
.end field

.field private gCurrentFilterCategory:Ljava/lang/String;

.field private gCurrentFilterCenter:Ljava/lang/String;

.field private gCurrentFilterMode:Ljava/lang/String;

.field private gCurrentFilterPoints:J

.field private gDialog:Landroid/app/ProgressDialog;

.field private gHandler:Landroid/os/Handler;

.field gHasData:Z

.field private gImgFilterCategoryCheckbox:Landroid/widget/ImageView;

.field private gImgFilterHotCheckbox:Landroid/widget/ImageView;

.field private gImgFilterNearByCheckbox:Landroid/widget/ImageView;

.field private gImgFilterUseCheckbox:Landroid/widget/ImageView;

.field private gImgFilterUsedExpiredCheckbox:Landroid/widget/ImageView;

.field private gIsExpanded:Z

.field private gIsHasAddress:Z

.field private gIsHasData:Z

.field private gIsLoadCampaignCategory:Z

.field private gIsLoading:Z

.field private gIsLoadingMore:Z

.field private gLayoutMenuSlide:Landroid/widget/RelativeLayout;

.field private gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

.field private gListCategory:Landroid/widget/ListView;

.field gListPerPage:I

.field gLoadingMore:Z

.field private gPoints:J

.field private gRunnable:Ljava/lang/Runnable;

.field private gSDK_INT:I

.field private gScreenHeight:I

.field private gScreenWidth:I

.field gSumListPerPage:I

.field private header_no_data_ListView:Landroid/view/View;

.field protected lm:Landroid/location/LocationManager;

.field private location:Lorg/json/JSONObject;

.field protected locationListener:Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;

.field private mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mItemPosition:I

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/16 v4, 0x19

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCampaignCategories:Ljava/util/ArrayList;

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gPoints:J

    .line 110
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    .line 120
    iput-boolean v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsLoadCampaignCategory:Z

    .line 122
    const/16 v0, 0x14

    iput v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->RC_MAP_LOCATION:I

    .line 124
    iput-boolean v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLoadingMore:Z

    .line 126
    iput v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListPerPage:I

    .line 127
    iput v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    .line 128
    iput-boolean v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gHasData:Z

    .line 134
    const-class v0, Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    .line 136
    iput-boolean v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsHasAddress:Z

    .line 137
    iput-boolean v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsLoadingMore:Z

    .line 138
    iput-boolean v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsHasData:Z

    .line 142
    iput v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSDK_INT:I

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mListState:Landroid/os/Parcelable;

    .line 258
    iput v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mListPosition:I

    .line 259
    iput v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mItemPosition:I

    .line 526
    iput-boolean v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsLoading:Z

    .line 80
    return-void
.end method

.method private IsHasAddress()V
    .registers 5

    .prologue
    .line 318
    const-string v0, ""

    .line 319
    .local v0, "uid":Ljava/lang/String;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/profile/me/user?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$GetProfileDataListener;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 323
    return-void
.end method

.method private ProcessJsonCampaignCategory(Ljava/lang/String;)V
    .registers 13
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 924
    :try_start_0
    iget-object v8, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "response_text "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 927
    .local v4, "jsonArray":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCampaignCategories:Ljava/util/ArrayList;

    .line 928
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_2b

    .line 976
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->setCampaignCategoryUI()V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2a} :catch_16a

    .line 981
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_2a
    return-void

    .line 930
    .restart local v2    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_2b
    :try_start_2b
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 932
    .local v6, "json_category":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-static {v6, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e0

    const-string v8, "id"

    invoke-static {v6, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "all"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e0

    .line 935
    const-string v8, "id"

    invoke-static {v6, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "sponsor"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e0

    .line 938
    const-string v8, "id"

    invoke-static {v6, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "free_ads"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e0

    .line 941
    const-string v8, "id"

    invoke-static {v6, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "draw"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e0

    .line 944
    const-string v8, "id"

    invoke-static {v6, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "deal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e0

    .line 947
    const-string v8, "id"

    invoke-static {v6, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cat"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e0

    .line 949
    const-string v8, "subitems"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 951
    .local v5, "jsonArrayCat":Lorg/json/JSONArray;
    iget-object v8, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "jsonArrayCat "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_d9} :catch_14f

    .line 954
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_da
    :try_start_da
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v3, v8, :cond_e4

    .line 928
    .end local v3    # "j":I
    .end local v5    # "jsonArrayCat":Lorg/json/JSONArray;
    .end local v6    # "json_category":Lorg/json/JSONObject;
    :cond_e0
    :goto_e0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_21

    .line 955
    .restart local v3    # "j":I
    .restart local v5    # "jsonArrayCat":Lorg/json/JSONArray;
    .restart local v6    # "json_category":Lorg/json/JSONObject;
    :cond_e4
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 957
    .local v7, "json_subitems":Lorg/json/JSONObject;
    iget-object v8, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "json_subitems "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    new-instance v0, Lic/buzzebeeslib/bean/CampaignCategory;

    invoke-direct {v0}, Lic/buzzebeeslib/bean/CampaignCategory;-><init>()V

    .line 960
    .local v0, "category":Lic/buzzebeeslib/bean/CampaignCategory;
    const-string v8, "id"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lic/buzzebeeslib/bean/CampaignCategory;->ID:Ljava/lang/String;

    .line 961
    const-string v8, "name"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    .line 962
    const-string v8, "mode"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    .line 963
    const-string v8, "cat"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    .line 964
    const-string v8, "count"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lic/buzzebeeslib/bean/CampaignCategory;->Count:I

    .line 965
    iget-object v8, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_132
    .catch Lorg/json/JSONException; {:try_start_da .. :try_end_132} :catch_135

    .line 954
    add-int/lit8 v3, v3, 0x1

    goto :goto_da

    .line 967
    .end local v0    # "category":Lic/buzzebeeslib/bean/CampaignCategory;
    .end local v7    # "json_subitems":Lorg/json/JSONObject;
    :catch_135
    move-exception v1

    .line 968
    .local v1, "e":Lorg/json/JSONException;
    :try_start_136
    const-string v8, "buzzebees.markets"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(CATCH)json.toString(2): "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14e
    .catch Lorg/json/JSONException; {:try_start_136 .. :try_end_14e} :catch_14f

    goto :goto_e0

    .line 971
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "j":I
    .end local v5    # "jsonArrayCat":Lorg/json/JSONArray;
    .end local v6    # "json_category":Lorg/json/JSONObject;
    :catch_14f
    move-exception v1

    .line 972
    .restart local v1    # "e":Lorg/json/JSONException;
    :try_start_150
    const-string v8, "buzzebees.markets"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(GetCampaignCategoryListener|onComplete|for|JSONException):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_168
    .catch Lorg/json/JSONException; {:try_start_150 .. :try_end_168} :catch_16a

    goto/16 :goto_e0

    .line 978
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_16a
    move-exception v8

    goto/16 :goto_2a
.end method

.method private ProcessJsonPurchasing(Ljava/lang/String;)V
    .registers 3
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 634
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    .line 636
    new-instance v0, Lic/buzzebeeslib/activity/PurchasingListActivity$4;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/PurchasingListActivity$4;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 739
    :cond_10
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lic/buzzebeeslib/activity/PurchasingListActivity;)V
    .registers 1

    .prologue
    .line 1081
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->resetFilter()V

    return-void
.end method

.method static synthetic access$11(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterCategoryCheckbox:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lic/buzzebeeslib/activity/PurchasingListActivity;)J
    .registers 3

    .prologue
    .line 110
    iget-wide v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    return-wide v0
.end method

.method static synthetic access$16(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lic/buzzebeeslib/activity/PurchasingListActivity;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 528
    invoke-direct/range {p0 .. p7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19(Lic/buzzebeeslib/activity/PurchasingListActivity;Z)V
    .registers 2

    .prologue
    .line 118
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/PurchasingListActivity;Z)V
    .registers 2

    .prologue
    .line 136
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsHasAddress:Z

    return-void
.end method

.method static synthetic access$20(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$21(Lic/buzzebeeslib/activity/PurchasingListActivity;)I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    return v0
.end method

.method static synthetic access$22(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$23(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->location:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$24(Lic/buzzebeeslib/activity/PurchasingListActivity;DD)V
    .registers 5

    .prologue
    .line 1181
    invoke-direct {p0, p1, p2, p3, p4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->doFilterByLatLon(DD)V

    return-void
.end method

.method static synthetic access$25(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$26(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gAdapter:Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

    return-object v0
.end method

.method static synthetic access$27(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$28(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V
    .registers 4

    .prologue
    .line 1733
    invoke-direct {p0, p1, p2, p3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->showDialogError(Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V

    return-void
.end method

.method static synthetic access$29(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;Ljava/lang/String;Lic/buzzebeeslib/bean/Purchasing;)V
    .registers 4

    .prologue
    .line 1663
    invoke-direct {p0, p1, p2, p3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->showDialogWinner(Ljava/lang/String;Ljava/lang/String;Lic/buzzebeeslib/bean/Purchasing;)V

    return-void
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1229
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30(Lic/buzzebeeslib/activity/PurchasingListActivity;)Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsHasAddress:Z

    return v0
.end method

.method static synthetic access$31(Lic/buzzebeeslib/activity/PurchasingListActivity;)Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    return v0
.end method

.method static synthetic access$32(Lic/buzzebeeslib/activity/PurchasingListActivity;)V
    .registers 1

    .prologue
    .line 316
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->IsHasAddress()V

    return-void
.end method

.method static synthetic access$33(Lic/buzzebeeslib/activity/PurchasingListActivity;Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gAdapter:Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

    return-void
.end method

.method static synthetic access$34(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$35(Lic/buzzebeeslib/activity/PurchasingListActivity;)Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$36(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$37(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$38(Lic/buzzebeeslib/activity/PurchasingListActivity;Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 257
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mListState:Landroid/os/Parcelable;

    return-void
.end method

.method static synthetic access$39(Lic/buzzebeeslib/activity/PurchasingListActivity;I)V
    .registers 2

    .prologue
    .line 258
    iput p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mListPosition:I

    return-void
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$40(Lic/buzzebeeslib/activity/PurchasingListActivity;I)V
    .registers 2

    .prologue
    .line 259
    iput p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mItemPosition:I

    return-void
.end method

.method static synthetic access$41(Lic/buzzebeeslib/activity/PurchasingListActivity;Z)V
    .registers 2

    .prologue
    .line 138
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsHasData:Z

    return-void
.end method

.method static synthetic access$42(Lic/buzzebeeslib/activity/PurchasingListActivity;)I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSDK_INT:I

    return v0
.end method

.method static synthetic access$43(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$44(Lic/buzzebeeslib/activity/PurchasingListActivity;)V
    .registers 1

    .prologue
    .line 741
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->setCampaignUI()V

    return-void
.end method

.method static synthetic access$45(Lic/buzzebeeslib/activity/PurchasingListActivity;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->ProcessJsonPurchasing(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/PurchasingListActivity;)Z
    .registers 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsHasData:Z

    return v0
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/activity/PurchasingListActivity;Z)V
    .registers 2

    .prologue
    .line 526
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsLoading:Z

    return-void
.end method

.method static synthetic access$9(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->ProcessJsonCampaignCategory(Ljava/lang/String;)V

    return-void
.end method

.method private convertPurchasingToCampaignView(Lic/buzzebeeslib/bean/Purchasing;)Lic/buzzebeeslib/bean/Campaign;
    .registers 4
    .param p1, "pPurchasing"    # Lic/buzzebeeslib/bean/Purchasing;

    .prologue
    .line 1367
    new-instance v0, Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v0}, Lic/buzzebeeslib/bean/Campaign;-><init>()V

    .line 1369
    .local v0, "pCampaign":Lic/buzzebeeslib/bean/Campaign;
    iget-object v1, p1, Lic/buzzebeeslib/bean/Purchasing;->AgencyName:Ljava/lang/String;

    iput-object v1, v0, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    .line 1370
    iget-object v1, p1, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    iput-object v1, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    .line 1371
    iget-object v1, p1, Lic/buzzebeeslib/bean/Purchasing;->AgencyID:Ljava/lang/String;

    iput-object v1, v0, Lic/buzzebeeslib/bean/Campaign;->AgencyID:Ljava/lang/String;

    .line 1372
    iget-object v1, p1, Lic/buzzebeeslib/bean/Purchasing;->Name:Ljava/lang/String;

    iput-object v1, v0, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    .line 1374
    return-object v0
.end method

.method private doFilterByLatLon(DD)V
    .registers 13
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    const/4 v7, 0x0

    .line 1182
    iput v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    .line 1183
    iput-boolean v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    .line 1184
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tutorial/menuList/animations/CollapseAnimation;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    iget v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3fed99999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/16 v4, 0x14

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/tutorial/menuList/animations/CollapseAnimation;-><init>(Landroid/view/View;III)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1185
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1186
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    .line 1191
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    .line 1192
    const/4 v1, 0x1

    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1193
    return-void
.end method

.method private doRefresh()V
    .registers 9

    .prologue
    .line 1836
    const/4 v1, 0x1

    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1837
    return-void
.end method

.method private getLocation()V
    .registers 2

    .prologue
    .line 1243
    new-instance v0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/PurchasingListActivity$6;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;)V

    .line 1286
    invoke-virtual {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->start()V

    .line 1287
    return-void
.end method

.method private initialLayout()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 358
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 359
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 360
    iget v12, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    .line 362
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    sget v13, Lic/buzzebeeslib/R$layout;->bz_header_no_data:I

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    .line 364
    sget v12, Lic/buzzebeeslib/R$id;->listAward:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/control/PullToRefreshListView;

    iput-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    .line 365
    sget v12, Lic/buzzebeeslib/R$id;->listCategory:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    iput-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListCategory:Landroid/widget/ListView;

    .line 367
    sget v12, Lic/buzzebeeslib/R$id;->layoutMenuSlide:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    iput-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    .line 369
    sget v12, Lic/buzzebeeslib/R$id;->imgFilterHotCheckbox:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterHotCheckbox:Landroid/widget/ImageView;

    .line 370
    sget v12, Lic/buzzebeeslib/R$id;->imgFilterCategoryCheckbox:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterCategoryCheckbox:Landroid/widget/ImageView;

    .line 375
    sget v12, Lic/buzzebeeslib/R$id;->imgFilterUseCheckbox:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterUseCheckbox:Landroid/widget/ImageView;

    .line 376
    sget v12, Lic/buzzebeeslib/R$id;->imgFilterUsedExpiredCheckbox:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterUsedExpiredCheckbox:Landroid/widget/ImageView;

    .line 378
    sget v12, Lic/buzzebeeslib/R$id;->imgFilterNearByCheckbox:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterNearByCheckbox:Landroid/widget/ImageView;

    .line 381
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    sget v13, Lic/buzzebeeslib/R$layout;->bz_purchasing_header:I

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 383
    .local v3, "headerView":Landroid/view/View;
    iget-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v12, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 385
    sget v12, Lic/buzzebeeslib/R$id;->etTextSearch:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;

    .line 387
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    sget v13, Lic/buzzebeeslib/R$layout;->bz_list_footer:I

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->footerListView:Landroid/view/View;

    .line 390
    :try_start_96
    iget-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v12}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v12

    if-nez v12, :cond_a5

    .line 391
    iget-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v13, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->footerListView:Landroid/view/View;

    invoke-virtual {v12, v13}, Lic/buzzebeeslib/control/PullToRefreshListView;->addFooterView(Landroid/view/View;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a5} :catch_12f

    .line 399
    :cond_a5
    :goto_a5
    iget-boolean v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsLoadCampaignCategory:Z

    if-nez v12, :cond_ac

    .line 400
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaignCategory()V

    .line 403
    :cond_ac
    iget-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v13, Lic/buzzebeeslib/activity/PurchasingListActivity$2;

    invoke-direct {v13, p0}, Lic/buzzebeeslib/activity/PurchasingListActivity$2;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;)V

    invoke-virtual {v12, v13}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnRefreshListener(Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;)V

    .line 419
    iget-object v12, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v13, Lic/buzzebeeslib/activity/PurchasingListActivity$3;

    invoke-direct {v13, p0}, Lic/buzzebeeslib/activity/PurchasingListActivity$3;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;)V

    invoke-virtual {v12, v13}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 469
    :try_start_c0
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, "fonts/DSNSKW_.TTF"

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 470
    .local v2, "font_header":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, "fonts/kit55p.ttf"

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 473
    .local v1, "font":Landroid/graphics/Typeface;
    sget v12, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 474
    .local v9, "tvPageHeader":Landroid/widget/TextView;
    sget v12, Lic/buzzebeeslib/R$id;->tvMyPurchasing:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 476
    .local v7, "tvMyPurchasing":Landroid/widget/TextView;
    sget v12, Lic/buzzebeeslib/R$id;->etTextSearch:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 477
    .local v0, "etTextSearch":Landroid/widget/EditText;
    sget v12, Lic/buzzebeeslib/R$id;->tvHotCaption:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 482
    .local v6, "tvHotCaption":Landroid/widget/TextView;
    sget v12, Lic/buzzebeeslib/R$id;->tvUseCaption:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 483
    .local v10, "tvUseCaption":Landroid/widget/TextView;
    sget v12, Lic/buzzebeeslib/R$id;->tvUsedExpiredCaption:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 485
    .local v11, "tvUsedExpiredCaption":Landroid/widget/TextView;
    sget v12, Lic/buzzebeeslib/R$id;->tvNearbyCaption:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 486
    .local v8, "tvNearbyCaption":Landroid/widget/TextView;
    sget v12, Lic/buzzebeeslib/R$id;->tvCategoryCaption:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/PurchasingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 489
    .local v5, "tvCategoryCaption":Landroid/widget/TextView;
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 490
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 491
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 492
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 497
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 498
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 500
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 501
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_12c} :catch_12d

    .line 507
    .end local v0    # "etTextSearch":Landroid/widget/EditText;
    .end local v1    # "font":Landroid/graphics/Typeface;
    .end local v2    # "font_header":Landroid/graphics/Typeface;
    .end local v5    # "tvCategoryCaption":Landroid/widget/TextView;
    .end local v6    # "tvHotCaption":Landroid/widget/TextView;
    .end local v7    # "tvMyPurchasing":Landroid/widget/TextView;
    .end local v8    # "tvNearbyCaption":Landroid/widget/TextView;
    .end local v9    # "tvPageHeader":Landroid/widget/TextView;
    .end local v10    # "tvUseCaption":Landroid/widget/TextView;
    .end local v11    # "tvUsedExpiredCaption":Landroid/widget/TextView;
    :goto_12c
    return-void

    .line 503
    :catch_12d
    move-exception v12

    goto :goto_12c

    .line 393
    :catch_12f
    move-exception v12

    goto/16 :goto_a5
.end method

.method private loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "is_first_load"    # Z
    .param p2, "TextSearch"    # Ljava/lang/String;
    .param p3, "filter_category_id"    # Ljava/lang/String;
    .param p4, "filter_points"    # J
    .param p6, "filter_center"    # Ljava/lang/String;
    .param p7, "filter_mode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 530
    iget-boolean v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsLoading:Z

    if-eqz v2, :cond_d

    .line 531
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    const-string v3, "loadCampaign --> can not load, because the current loading is not finish..."

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :goto_c
    return-void

    .line 533
    :cond_d
    iput-boolean v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsLoading:Z

    .line 535
    if-eqz p1, :cond_14

    .line 536
    const/4 v2, 0x0

    iput v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    .line 540
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/redeem?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&format=json&type=list2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "url":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    :cond_5a
    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&cat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    :cond_79
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-ltz v2, :cond_96

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&min_point="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 554
    :cond_96
    const-string v2, ""

    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&center="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    :cond_b5
    const-string v2, ""

    invoke-virtual {p7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d4

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 568
    :cond_d4
    iput-boolean v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsLoadingMore:Z

    .line 569
    iget v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    if-eqz v2, :cond_f3

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&$skip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 575
    :cond_f3
    const-string v0, "Purchasing"

    .line 577
    .local v0, "cache_name":Ljava/lang/String;
    const-string v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(loadCampaign)url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    new-instance v2, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;

    invoke-direct {v2, p0, p1, v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;ZLjava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_c
.end method

.method private loadCampaignCategory()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaigncat/full_menu_group?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(loadCampaignCategory)url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    new-instance v1, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;

    invoke-direct {v1, p0, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignCategoryListener;)V

    invoke-static {v0, v1, v4}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 844
    return-void
.end method

.method private resetFilter()V
    .registers 5

    .prologue
    .line 1082
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4d

    .line 1086
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterHotCheckbox:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon_unread_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1087
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterCategoryCheckbox:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon_unread_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1088
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterNearByCheckbox:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon_unread_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1089
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterUseCheckbox:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon_unread_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1090
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterUsedExpiredCheckbox:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon_unread_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1092
    const-string v1, ""

    iput-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1093
    const-string v1, ""

    iput-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    .line 1094
    const-string v1, ""

    iput-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    .line 1095
    return-void

    .line 1083
    :cond_4d
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/CampaignCategory;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1082
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 302
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 307
    :try_start_f
    const-string v0, "listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mListState:Landroid/os/Parcelable;

    .line 308
    const-string v0, "listPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mListPosition:I

    .line 309
    const-string v0, "itemPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mItemPosition:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_27} :catch_28

    .line 314
    :cond_27
    :goto_27
    return-void

    .line 310
    :catch_28
    move-exception v0

    goto :goto_27
.end method

.method private setCampaignCategoryUI()V
    .registers 4

    .prologue
    .line 984
    new-instance v0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gAdapterCategory:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    .line 985
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gCampaignCategories.size() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCampaignCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_80

    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsLoadCampaignCategory:Z

    .line 988
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListCategory:Landroid/widget/ListView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gAdapterCategory:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 993
    :goto_3d
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterHotCheckbox:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_unread_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 994
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterCategoryCheckbox:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_unread_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 995
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterNearByCheckbox:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_unread_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 996
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterUseCheckbox:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_unread_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 997
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterUsedExpiredCheckbox:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_unread_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 998
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterHotCheckbox:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_read_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 999
    return-void

    .line 990
    :cond_80
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListCategory:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_3d
.end method

.method private setCampaignUI()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 743
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    if-eqz v1, :cond_2a

    .line 744
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_98

    .line 746
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->getHeaderViewsCount()I

    move-result v1

    if-lez v1, :cond_2a

    .line 749
    :try_start_1f
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    if-eqz v1, :cond_2a

    .line 750
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2a} :catch_87

    .line 778
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gAdapter:Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

    if-nez v1, :cond_bc

    .line 779
    new-instance v1, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gAdapter:Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

    .line 780
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b6

    .line 781
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gAdapter:Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 795
    :goto_4a
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    if-eqz v1, :cond_70

    .line 796
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_f3

    .line 798
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->getHeaderViewsCount()I

    move-result v1

    if-lez v1, :cond_70

    .line 801
    :try_start_65
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    if-eqz v1, :cond_70

    .line 802
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_70} :catch_e1

    .line 832
    :cond_70
    :goto_70
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mListState:Landroid/os/Parcelable;

    if-eqz v1, :cond_7b

    .line 833
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 834
    :cond_7b
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mListPosition:I

    iget v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mItemPosition:I

    invoke-virtual {v1, v2, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->setSelectionFromTop(II)V

    .line 836
    iput-boolean v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsLoadingMore:Z

    .line 837
    return-void

    .line 752
    :catch_87
    move-exception v0

    .line 754
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    if-eqz v1, :cond_2a

    .line 755
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$id;->layoutRoot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a

    .line 764
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_98
    :try_start_98
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    if-eqz v1, :cond_2a

    .line 765
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a3} :catch_a4

    goto :goto_2a

    .line 767
    :catch_a4
    move-exception v0

    .line 769
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    if-eqz v1, :cond_2a

    .line 770
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$id;->layoutRoot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2a

    .line 783
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_b6
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1, v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4a

    .line 787
    :cond_bc
    new-instance v1, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gAdapter:Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

    .line 788
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;

    if-eqz v1, :cond_da

    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_da

    .line 789
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gAdapter:Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_4a

    .line 791
    :cond_da
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1, v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_4a

    .line 804
    :catch_e1
    move-exception v0

    .line 806
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    if-eqz v1, :cond_70

    .line 807
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$id;->layoutRoot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_70

    .line 817
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_f3
    :try_start_f3
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    if-eqz v1, :cond_70

    .line 818
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_fe} :catch_100

    goto/16 :goto_70

    .line 820
    :catch_100
    move-exception v0

    .line 822
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    if-eqz v1, :cond_70

    .line 823
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->header_no_data_ListView:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$id;->layoutRoot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_70
.end method

.method private showDialogDealsGet(Lic/buzzebeeslib/bean/Purchasing;)V
    .registers 20
    .param p1, "pPurchasing"    # Lic/buzzebeeslib/bean/Purchasing;

    .prologue
    .line 1378
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_111

    .line 1379
    new-instance v11, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1380
    .local v11, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1381
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_deals_get:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 1382
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1386
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v5, 0x3

    if-eq v2, v5, :cond_38

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v5, 0x4

    if-ne v2, v5, :cond_112

    .line 1387
    :cond_38
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 1388
    .local v15, "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v5, v2

    const-wide v16, 0x3feccccccccccccdL

    mul-double v5, v5, v16

    double-to-int v2, v5

    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-double v5, v5

    const-wide v16, 0x3fe6666666666666L

    mul-double v5, v5, v16

    double-to-int v5, v5

    invoke-virtual {v15, v2, v5}, Landroid/view/Window;->setLayout(II)V

    .line 1404
    :goto_69
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1405
    .local v14, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v12, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1406
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 1407
    .local v10, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v5, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1410
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1411
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1413
    .local v13, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->btnOK:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1414
    .local v9, "btnUsed":Landroid/widget/Button;
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1418
    .local v8, "btnClose":Landroid/widget/Button;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v5, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "api/campaign/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/picture/modifydate="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1419
    .local v3, "img_url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1420
    move-object/from16 v0, p1

    iget-object v2, v0, Lic/buzzebeeslib/bean/Purchasing;->AgencyName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1422
    new-instance v2, Lic/buzzebeeslib/activity/PurchasingListActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/PurchasingListActivity$7;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1433
    new-instance v2, Lic/buzzebeeslib/activity/PurchasingListActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v11, v1}, Lic/buzzebeeslib/activity/PurchasingListActivity$8;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Landroid/app/Dialog;Lic/buzzebeeslib/bean/Purchasing;)V

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1447
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 1449
    .end local v3    # "img_url":Ljava/lang/String;
    .end local v4    # "imgCampaign":Landroid/widget/ImageView;
    .end local v8    # "btnClose":Landroid/widget/Button;
    .end local v9    # "btnUsed":Landroid/widget/Button;
    .end local v10    # "currentDateandTime":Ljava/lang/String;
    .end local v11    # "dialogSerial":Landroid/app/Dialog;
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v13    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v14    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v15    # "window":Landroid/view/Window;
    :cond_111
    return-void

    .line 1389
    .restart local v11    # "dialogSerial":Landroid/app/Dialog;
    :cond_112
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v5, 0x2

    if-ne v2, v5, :cond_154

    .line 1390
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 1391
    .restart local v15    # "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v5, v2

    const-wide v16, 0x3feccccccccccccdL

    mul-double v5, v5, v16

    double-to-int v2, v5

    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-double v5, v5

    const-wide v16, 0x3fe6666666666666L

    mul-double v5, v5, v16

    double-to-int v5, v5

    invoke-virtual {v15, v2, v5}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_69

    .line 1392
    .end local v15    # "window":Landroid/view/Window;
    :cond_154
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v5, 0x1

    if-ne v2, v5, :cond_188

    .line 1393
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 1394
    .restart local v15    # "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    invoke-virtual {v15, v2, v5}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_69

    .line 1396
    .end local v15    # "window":Landroid/view/Window;
    :cond_188
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 1397
    .restart local v15    # "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v5, v2

    const-wide v16, 0x3feccccccccccccdL

    mul-double v5, v5, v16

    double-to-int v2, v5

    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-double v5, v5

    const-wide v16, 0x3fe6666666666666L

    mul-double v5, v5, v16

    double-to-int v5, v5

    invoke-virtual {v15, v2, v5}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_69
.end method

.method private showDialogError(Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V
    .registers 19
    .param p1, "pError"    # Ljava/lang/String;
    .param p2, "pIsShowCampaign"    # Z
    .param p3, "pPurchasing"    # Lic/buzzebeeslib/bean/Purchasing;

    .prologue
    .line 1735
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_d6

    .line 1736
    new-instance v9, Landroid/app/Dialog;

    invoke-direct {v9, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1738
    .local v9, "dialogSerial":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1739
    sget v1, Lic/buzzebeeslib/R$layout;->bz_dialog_new_error:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1740
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1742
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x3

    if-eq v1, v4, :cond_36

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x4

    if-ne v1, v4, :cond_d7

    .line 1743
    :cond_36
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 1744
    .local v12, "window":Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v4, v1

    const-wide v13, 0x3feccccccccccccdL

    mul-double/2addr v4, v13

    double-to-int v1, v4

    invoke-virtual {v12}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v13, 0x3fe6666666666666L

    mul-double/2addr v4, v13

    double-to-int v4, v4

    invoke-virtual {v12, v1, v4}, Landroid/view/Window;->setLayout(II)V

    .line 1756
    :goto_65
    sget v1, Lic/buzzebeeslib/R$id;->LayoutHeader:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1757
    .local v7, "LayoutHeader":Landroid/widget/RelativeLayout;
    sget v1, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1758
    .local v3, "imgCampaign":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1759
    .local v10, "tvCampaignDesc":Landroid/widget/TextView;
    sget v1, Lic/buzzebeeslib/R$id;->tvError:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1760
    .local v11, "tvError":Landroid/widget/TextView;
    sget v1, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1762
    .local v8, "btnClose":Landroid/widget/Button;
    if-eqz p2, :cond_17c

    .line 1763
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1769
    :goto_93
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/campaign/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v4, v0, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/picture/modifydate="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1770
    .local v2, "img_url":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v4, 0x0

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1771
    move-object/from16 v0, p3

    iget-object v1, v0, Lic/buzzebeeslib/bean/Purchasing;->AgencyName:Ljava/lang/String;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1772
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1774
    new-instance v1, Lic/buzzebeeslib/activity/PurchasingListActivity$10;

    invoke-direct {v1, p0, v9}, Lic/buzzebeeslib/activity/PurchasingListActivity$10;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1784
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 1787
    .end local v2    # "img_url":Ljava/lang/String;
    .end local v3    # "imgCampaign":Landroid/widget/ImageView;
    .end local v7    # "LayoutHeader":Landroid/widget/RelativeLayout;
    .end local v8    # "btnClose":Landroid/widget/Button;
    .end local v9    # "dialogSerial":Landroid/app/Dialog;
    .end local v10    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v11    # "tvError":Landroid/widget/TextView;
    .end local v12    # "window":Landroid/view/Window;
    :cond_d6
    return-void

    .line 1745
    .restart local v9    # "dialogSerial":Landroid/app/Dialog;
    :cond_d7
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x2

    if-ne v1, v4, :cond_117

    .line 1746
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 1747
    .restart local v12    # "window":Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v4, v1

    const-wide v13, 0x3feccccccccccccdL

    mul-double/2addr v4, v13

    double-to-int v1, v4

    invoke-virtual {v12}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v13, 0x3fe6666666666666L

    mul-double/2addr v4, v13

    double-to-int v4, v4

    invoke-virtual {v12, v1, v4}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_65

    .line 1748
    .end local v12    # "window":Landroid/view/Window;
    :cond_117
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x1

    if-ne v1, v4, :cond_14b

    .line 1749
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 1750
    .restart local v12    # "window":Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    invoke-virtual {v12}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    invoke-virtual {v12, v1, v4}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_65

    .line 1752
    .end local v12    # "window":Landroid/view/Window;
    :cond_14b
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 1753
    .restart local v12    # "window":Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v4, v1

    const-wide v13, 0x3feccccccccccccdL

    mul-double/2addr v4, v13

    double-to-int v1, v4

    invoke-virtual {v12}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v13, 0x3fe6666666666666L

    mul-double/2addr v4, v13

    double-to-int v4, v4

    invoke-virtual {v12, v1, v4}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_65

    .line 1765
    .restart local v3    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v7    # "LayoutHeader":Landroid/widget/RelativeLayout;
    .restart local v8    # "btnClose":Landroid/widget/Button;
    .restart local v10    # "tvCampaignDesc":Landroid/widget/TextView;
    .restart local v11    # "tvError":Landroid/widget/TextView;
    :cond_17c
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_93
.end method

.method private showDialogWinner(Ljava/lang/String;Ljava/lang/String;Lic/buzzebeeslib/bean/Purchasing;)V
    .registers 22
    .param p1, "pStrWinnerMessage"    # Ljava/lang/String;
    .param p2, "strSerial"    # Ljava/lang/String;
    .param p3, "pPurchasing"    # Lic/buzzebeeslib/bean/Purchasing;

    .prologue
    .line 1664
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_120

    .line 1665
    new-instance v9, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1666
    .local v9, "dialogSerial":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1667
    sget v1, Lic/buzzebeeslib/R$layout;->bz_dialog_new_winner:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1668
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1672
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x3

    if-eq v1, v4, :cond_38

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x4

    if-ne v1, v4, :cond_121

    .line 1673
    :cond_38
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 1674
    .local v15, "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v4, v1

    const-wide v16, 0x3feccccccccccccdL

    mul-double v4, v4, v16

    double-to-int v1, v4

    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v16, 0x3fe6666666666666L

    mul-double v4, v4, v16

    double-to-int v4, v4

    invoke-virtual {v15, v1, v4}, Landroid/view/Window;->setLayout(II)V

    .line 1688
    :goto_69
    sget v1, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1689
    .local v3, "imgCampaign":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1690
    .local v12, "tvCampaignDesc":Landroid/widget/TextView;
    sget v1, Lic/buzzebeeslib/R$id;->tvWinner1:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1691
    sget v1, Lic/buzzebeeslib/R$id;->tvWinner2:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1692
    .local v14, "tvWinner2":Landroid/widget/TextView;
    sget v1, Lic/buzzebeeslib/R$id;->tvWinner3:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1694
    sget v1, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1698
    .local v7, "btnClose":Landroid/widget/Button;
    sget v1, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1699
    .local v13, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy HH:mm"

    invoke-direct {v10, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1700
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 1701
    .local v8, "currentDateandTime":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    sget v4, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/campaign/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v4, v0, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/picture/modifydate="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1706
    .local v2, "img_url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v4, 0x0

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1707
    move-object/from16 v0, p3

    iget-object v1, v0, Lic/buzzebeeslib/bean/Purchasing;->AgencyName:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1709
    move-object/from16 v11, p1

    .line 1710
    .local v11, "str_winner_message":Ljava/lang/String;
    const-string v1, "<serial>"

    move-object/from16 v0, p2

    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1711
    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1716
    new-instance v1, Lic/buzzebeeslib/activity/PurchasingListActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v9}, Lic/buzzebeeslib/activity/PurchasingListActivity$9;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Landroid/app/Dialog;)V

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1728
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 1731
    .end local v2    # "img_url":Ljava/lang/String;
    .end local v3    # "imgCampaign":Landroid/widget/ImageView;
    .end local v7    # "btnClose":Landroid/widget/Button;
    .end local v8    # "currentDateandTime":Ljava/lang/String;
    .end local v9    # "dialogSerial":Landroid/app/Dialog;
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "str_winner_message":Ljava/lang/String;
    .end local v12    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v13    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v14    # "tvWinner2":Landroid/widget/TextView;
    .end local v15    # "window":Landroid/view/Window;
    :cond_120
    return-void

    .line 1675
    .restart local v9    # "dialogSerial":Landroid/app/Dialog;
    :cond_121
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x2

    if-ne v1, v4, :cond_163

    .line 1676
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 1677
    .restart local v15    # "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v4, v1

    const-wide v16, 0x3feccccccccccccdL

    mul-double v4, v4, v16

    double-to-int v1, v4

    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v16, 0x3fe6666666666666L

    mul-double v4, v4, v16

    double-to-int v4, v4

    invoke-virtual {v15, v1, v4}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_69

    .line 1678
    .end local v15    # "window":Landroid/view/Window;
    :cond_163
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x1

    if-ne v1, v4, :cond_197

    .line 1679
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 1680
    .restart local v15    # "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    invoke-virtual {v15, v1, v4}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_69

    .line 1682
    .end local v15    # "window":Landroid/view/Window;
    :cond_197
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 1683
    .restart local v15    # "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v4, v1

    const-wide v16, 0x3feccccccccccccdL

    mul-double v4, v4, v16

    double-to-int v1, v4

    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v16, 0x3fe6666666666666L

    mul-double v4, v4, v16

    double-to-int v4, v4

    invoke-virtual {v15, v1, v4}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_69
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1230
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/PurchasingListActivity$5;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/PurchasingListActivity$5;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1237
    return-void
.end method


# virtual methods
.method public doAction(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1792
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/Purchasing;

    .line 1796
    .local v2, "purchasing":Lic/buzzebeeslib/bean/Purchasing;
    if-eqz v2, :cond_6e

    .line 1798
    iget-wide v4, v2, Lic/buzzebeeslib/bean/Purchasing;->Type:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_6f

    .line 1799
    const-string v4, ""

    sget v5, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v8, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1801
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "api/campaign/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/winner?token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1802
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OK redeem url="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1804
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    new-instance v4, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;

    invoke-direct {v4, p0, v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Lic/buzzebeeslib/bean/Purchasing;)V

    invoke-static {v3, v1, v4, v9}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 1833
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v3    # "url":Ljava/lang/String;
    :cond_6e
    :goto_6e
    return-void

    .line 1806
    :cond_6f
    const/4 v0, 0x0

    .line 1807
    .local v0, "IsGotoProfile":Z
    iget-boolean v4, v2, Lic/buzzebeeslib/bean/Purchasing;->Delivered:Z

    if-eqz v4, :cond_79

    .line 1808
    iget-boolean v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsHasAddress:Z

    if-nez v4, :cond_79

    .line 1809
    const/4 v0, 0x1

    .line 1812
    :cond_79
    if-eqz v0, :cond_81

    .line 1815
    const-string v4, "ProfileSettingActivity.class"

    invoke-direct {p0, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_6e

    .line 1817
    :cond_81
    iget-boolean v4, v2, Lic/buzzebeeslib/bean/Purchasing;->IsUsed:Z

    if-eqz v4, :cond_e2

    .line 1818
    const-string v4, ""

    sget v5, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v8, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1821
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "api/redeem/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lic/buzzebeeslib/bean/Purchasing;->RedeemKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/use?token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1822
    .restart local v3    # "url":Ljava/lang/String;
    iget-object v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OK redeem url="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1824
    .restart local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    new-instance v4, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    invoke-direct {v4, p0, v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Lic/buzzebeeslib/bean/Purchasing;)V

    invoke-static {v3, v1, v4, v9}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_6e

    .line 1826
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v3    # "url":Ljava/lang/String;
    :cond_e2
    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->showDialogDealsGet(Lic/buzzebeeslib/bean/Purchasing;)V

    goto :goto_6e
.end method

.method public doCampaignCategory(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 1112
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->resetFilter()V

    .line 1114
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 1115
    .local v8, "category":Lic/buzzebeeslib/bean/CampaignCategory;
    iput-boolean v1, v8, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1117
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterCategoryCheckbox:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon_read_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1119
    iput v9, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    .line 1120
    iput-boolean v9, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    .line 1121
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/tutorial/menuList/animations/CollapseAnimation;

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    iget v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3fed99999999999aL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/16 v5, 0x14

    invoke-direct {v2, v3, v9, v4, v5}, Lcom/tutorial/menuList/animations/CollapseAnimation;-><init>(Landroid/view/View;III)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1122
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->ID:Ljava/lang/String;

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1123
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    .line 1124
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    .line 1128
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    .line 1129
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method public doDeleteTextSearch(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1098
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    return-void
.end method

.method public doFilterCategory(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1155
    return-void
.end method

.method public doFilterHot(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1133
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->resetFilter()V

    .line 1135
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterHotCheckbox:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_read_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1137
    iput v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    .line 1138
    iput-boolean v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    .line 1139
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tutorial/menuList/animations/CollapseAnimation;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    iget v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3fed99999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/16 v4, 0x14

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/tutorial/menuList/animations/CollapseAnimation;-><init>(Landroid/view/View;III)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1140
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1141
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    .line 1142
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    .line 1146
    const-string v0, "all"

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    .line 1147
    const/4 v1, 0x1

    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1148
    return-void
.end method

.method public doFilterMyChoice(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1158
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->resetFilter()V

    .line 1160
    iput v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    .line 1161
    iput-boolean v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    .line 1162
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tutorial/menuList/animations/CollapseAnimation;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    iget v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3fed99999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/16 v4, 0x14

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/tutorial/menuList/animations/CollapseAnimation;-><init>(Landroid/view/View;III)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1163
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1164
    iget-wide v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gPoints:J

    iput-wide v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    .line 1165
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    .line 1169
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    .line 1170
    const/4 v1, 0x1

    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gPoints:J

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1171
    return-void
.end method

.method public doFilterNearBy(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1174
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->resetFilter()V

    .line 1176
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterNearByCheckbox:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_read_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1178
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getLocation()V

    .line 1179
    return-void
.end method

.method public doFilterUse(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1196
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->resetFilter()V

    .line 1197
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterUseCheckbox:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_read_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1199
    iput v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    .line 1200
    iput-boolean v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    .line 1201
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tutorial/menuList/animations/CollapseAnimation;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    iget v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3fed99999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/16 v4, 0x14

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/tutorial/menuList/animations/CollapseAnimation;-><init>(Landroid/view/View;III)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1202
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1203
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    .line 1204
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    .line 1208
    const-string v0, "not_use"

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    .line 1209
    const/4 v1, 0x1

    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1210
    return-void
.end method

.method public doFilterUsedExpired(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1213
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->resetFilter()V

    .line 1214
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterUsedExpiredCheckbox:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_read_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1216
    iput v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    .line 1217
    iput-boolean v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    .line 1218
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tutorial/menuList/animations/CollapseAnimation;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    iget v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3fed99999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/16 v4, 0x14

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/tutorial/menuList/animations/CollapseAnimation;-><init>(Landroid/view/View;III)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1219
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1220
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    .line 1221
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    .line 1225
    const-string v0, "used"

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    .line 1226
    const/4 v1, 0x1

    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1227
    return-void
.end method

.method public doGoToMarketDetail(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1356
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/Purchasing;

    .line 1357
    .local v2, "purchasing":Lic/buzzebeeslib/bean/Purchasing;
    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->convertPurchasingToCampaignView(Lic/buzzebeeslib/bean/Purchasing;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v0

    .line 1358
    .local v0, "campaign":Lic/buzzebeeslib/bean/Campaign;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1359
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "campaign_id"

    iget-object v4, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1360
    const-string v3, "campaign"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1361
    const-string v3, "purchase"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1362
    const-string v3, "purchase_type"

    iget-boolean v4, v2, Lic/buzzebeeslib/bean/Purchasing;->IsConditionPass:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1363
    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1364
    return-void
.end method

.method public doMenuSlide(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x14

    const-wide v6, 0x3fed99999999999aL

    const/4 v5, 0x0

    .line 1102
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    if-eqz v0, :cond_20

    .line 1103
    iput-boolean v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    .line 1104
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tutorial/menuList/animations/CollapseAnimation;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    iget v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    invoke-direct {v1, v2, v5, v3, v8}, Lcom/tutorial/menuList/animations/CollapseAnimation;-><init>(Landroid/view/View;III)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1109
    :goto_1f
    return-void

    .line 1106
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    .line 1107
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tutorial/menuList/animations/ExpandAnimation;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    iget v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    invoke-direct {v1, v2, v5, v3, v8}, Lcom/tutorial/menuList/animations/ExpandAnimation;-><init>(Landroid/view/View;III)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 146
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/PurchasingListActivity;->requestWindowFeature(I)Z

    .line 148
    invoke-static {p0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 149
    sget v6, Lic/buzzebeeslib/R$layout;->bz_purchasing_list:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->setContentView(I)V

    .line 151
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mHandler:Landroid/os/Handler;

    .line 152
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->location:Lorg/json/JSONObject;

    .line 155
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 156
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 158
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "cache_market"

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 160
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 161
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 162
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenHeight:I

    .line 163
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    .line 165
    iget v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    .line 166
    .local v5, "width":I
    iget v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenHeight:I

    .line 168
    .local v2, "height":I
    if-le v2, v5, :cond_b5

    .end local v2    # "height":I
    :goto_5f
    div-int/lit8 v3, v2, 0x2

    .line 169
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 170
    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 171
    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 172
    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 175
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->IsHasAddress()V

    .line 177
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gHandler:Landroid/os/Handler;

    .line 178
    const-string v6, ""

    sget v7, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7, v8, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 180
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->initialLayout()V

    .line 182
    if-eqz p1, :cond_a2

    .line 185
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 188
    :cond_a2
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 190
    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;

    new-instance v7, Lic/buzzebeeslib/activity/PurchasingListActivity$1;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/PurchasingListActivity$1;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 209
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_b5
    move v2, v5

    .line 168
    goto :goto_5f
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 245
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 246
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 249
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 250
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 251
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 20
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1330
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    sget-object v1, Lic/buzzebeeslib/activity/PurchasingListActivity;->jsonArray:Lorg/json/JSONArray;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 1331
    .local v11, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "location"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1332
    .local v10, "jsonLocation":Lorg/json/JSONObject;
    const-string v1, "latitude"

    invoke-static {v10, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1333
    .local v12, "latitude":Ljava/lang/String;
    const-string v1, "longitude"

    invoke-static {v10, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1335
    .local v13, "longitude":Ljava/lang/String;
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->resetFilter()V

    .line 1337
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterCategoryCheckbox:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon_read_ton:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1339
    const/4 v1, 0x0

    iput v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    .line 1340
    const/4 v1, 0x0

    iput-boolean v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    .line 1341
    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/tutorial/menuList/animations/CollapseAnimation;

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    iget v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    int-to-double v5, v5

    const-wide v7, 0x3fed99999999999aL

    mul-double/2addr v5, v7

    double-to-int v5, v5

    const/16 v6, 0x14

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tutorial/menuList/animations/CollapseAnimation;-><init>(Landroid/view/View;III)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1342
    const-string v1, ""

    iput-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1343
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    .line 1344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    .line 1348
    const-string v1, ""

    iput-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    .line 1349
    const/4 v2, 0x1

    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J

    iget-object v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_83} :catch_84

    .line 1353
    .end local v10    # "jsonLocation":Lorg/json/JSONObject;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "latitude":Ljava/lang/String;
    .end local v13    # "longitude":Ljava/lang/String;
    :goto_83
    return-void

    .line 1350
    :catch_84
    move-exception v9

    .line 1351
    .local v9, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(JSONException|onItemClick):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_83
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    .line 511
    const/4 v0, 0x4

    if-ne p1, v0, :cond_29

    .line 513
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    if-eqz v0, :cond_24

    .line 514
    iput-boolean v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z

    .line 515
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tutorial/menuList/animations/CollapseAnimation;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;

    iget v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3fed99999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/16 v4, 0x14

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/tutorial/menuList/animations/CollapseAnimation;-><init>(Landroid/view/View;III)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 517
    const/4 v0, 0x1

    .line 522
    :goto_23
    return v0

    .line 519
    :cond_24
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_23

    .line 522
    :cond_29
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 224
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 225
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 228
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 229
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 239
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 240
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 298
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 214
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onResume() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSDK_INT:I

    .line 216
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0, v2}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 218
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->doRefresh()V

    .line 219
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v2}, Lic/buzzebeeslib/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 220
    return-void
.end method

.method protected onResumeFragments()V
    .registers 1

    .prologue
    .line 292
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 293
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 264
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    const-string v3, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    :try_start_11
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mListState:Landroid/os/Parcelable;

    .line 275
    const-string v2, "listState"

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 278
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mListPosition:I

    .line 279
    const-string v2, "listPosition"

    iget v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mListPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_42

    :goto_38
    iput v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mItemPosition:I

    .line 284
    const-string v1, "itemPosition"

    iget v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->mItemPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    .end local v0    # "itemView":Landroid/view/View;
    :goto_41
    return-void

    .line 283
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_42
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_45} :catch_47

    move-result v1

    goto :goto_38

    .line 285
    .end local v0    # "itemView":Landroid/view/View;
    :catch_47
    move-exception v1

    goto :goto_41
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 233
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 234
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method
