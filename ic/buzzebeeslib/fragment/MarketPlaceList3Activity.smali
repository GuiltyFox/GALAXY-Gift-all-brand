.class public Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MarketPlaceList3Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;,
        Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;,
        Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;,
        Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;,
        Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$QTPagerAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_market"

.field private static final ITEM_POSITION_KEY:Ljava/lang/String; = "itemPosition"

.field private static final LIST_POSITION_KEY:Ljava/lang/String; = "listPosition"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "listState"


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private final LOGCATLC:Ljava/lang/String;

.field private RC_MARKET_DETAIL:I

.field arrImg:[Ljava/lang/Integer;

.field private booleanCancelRunnable:Z

.field private contentQT:Landroid/widget/RelativeLayout;

.field private gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

.field private gCampaignViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/Campaign;",
            ">;"
        }
    .end annotation
.end field

.field private gContentFilter:Landroid/widget/LinearLayout;

.field private gContentFooter:Landroid/widget/LinearLayout;

.field private gCurrentFilterCategory:Ljava/lang/String;

.field private gCurrentFilterCenter:Ljava/lang/String;

.field private gCurrentFilterMode:Ljava/lang/String;

.field private gCurrentFilterPlace:Ljava/lang/String;

.field private gCurrentFilterPoints:J

.field private gCurrentFilterSponsor:Ljava/lang/String;

.field private gCurrentFilterTextSearch:Ljava/lang/String;

.field private gDpi:I

.field private gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

.field private gIsHasData:Z

.field private gIsLoadingMore:Z

.field private gLastTimeShowBuyPoint:J

.field protected gListNearBy:Landroid/widget/ListView;

.field private final gListPerPage:I

.field private gRunnable:Ljava/lang/Runnable;

.field private gRunnable1:Ljava/lang/Runnable;

.field private gRunnable2:Ljava/lang/Runnable;

.field private gRunnable3:Ljava/lang/Runnable;

.field private gSDK_INT:I

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gSumListPerPage:I

.field private gTabState:I

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mIsPlayingAnimation:Z

.field private mItemPosition:I

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;

.field private myLastVisiblePos:I

.field strHashtag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 76
    const-string v0, "buzzebees.marketlist.fragment"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->LOGCAT:Ljava/lang/String;

    .line 77
    const-string v0, "buzzebees.marketlist.fragment.lc"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->LOGCATLC:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;

    .line 103
    const/16 v0, 0xa

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->RC_MARKET_DETAIL:I

    .line 105
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsLoadingMore:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsHasData:Z

    .line 109
    const/16 v0, 0x19

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gListPerPage:I

    .line 110
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mListState:Landroid/os/Parcelable;

    .line 119
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mListPosition:I

    .line 120
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mItemPosition:I

    .line 123
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mIsPlayingAnimation:Z

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gLastTimeShowBuyPoint:J

    .line 133
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSDK_INT:I

    .line 137
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->booleanCancelRunnable:Z

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->strHashtag:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private ProcessJsonCampaign(Ljava/lang/String;)V
    .registers 3
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 896
    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$7;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 954
    return-void
.end method

.method private ProcessJsonCampaignCategory(Ljava/lang/String;)V
    .registers 22
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 1599
    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1600
    .local v10, "jsonArray":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1601
    .local v2, "campaignCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignCategory;>;"
    const/16 v16, -0x1

    .line 1602
    .local v16, "selected_index":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_f
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_3f

    .line 1678
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_3e

    .line 1679
    sget v17, Lic/buzzebeeslib/R$id;->listFilter:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    .line 1680
    .local v14, "listFilter":Landroid/widget/ListView;
    new-instance v17, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1681
    if-ltz v16, :cond_3e

    .line 1682
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_1fb

    .line 1688
    .end local v2    # "campaignCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignCategory;>;"
    .end local v8    # "i":I
    .end local v10    # "jsonArray":Lorg/json/JSONArray;
    .end local v14    # "listFilter":Landroid/widget/ListView;
    .end local v16    # "selected_index":I
    :cond_3e
    :goto_3e
    return-void

    .line 1604
    .restart local v2    # "campaignCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignCategory;>;"
    .restart local v8    # "i":I
    .restart local v10    # "jsonArray":Lorg/json/JSONArray;
    .restart local v16    # "selected_index":I
    :cond_3f
    :try_start_3f
    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 1606
    .local v12, "json_category":Lorg/json/JSONObject;
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_146

    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "all"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_146

    .line 1609
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "sponsor"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_146

    .line 1613
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "free_ads"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_146

    .line 1616
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "draw"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_146

    .line 1619
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "deal"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_146

    .line 1622
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "cat"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_146

    .line 1623
    const-string v17, "subitems"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1625
    .local v11, "jsonArrayCat":Lorg/json/JSONArray;
    new-instance v4, Lic/buzzebeeslib/bean/CampaignCategory;

    invoke-direct {v4}, Lic/buzzebeeslib/bean/CampaignCategory;-><init>()V

    .line 1626
    .local v4, "category_all":Lic/buzzebeeslib/bean/CampaignCategory;
    const-string v17, "All"

    move-object/from16 v0, v17

    iput-object v0, v4, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    .line 1627
    const-string v17, "type"

    move-object/from16 v0, v17

    iput-object v0, v4, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    .line 1628
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "cat"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1629
    .local v15, "param_cat":Ljava/lang/String;
    if-eqz v15, :cond_14a

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14a

    .line 1630
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1635
    :goto_112
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    new-instance v6, Lic/buzzebeeslib/bean/CampaignCategory;

    invoke-direct {v6}, Lic/buzzebeeslib/bean/CampaignCategory;-><init>()V

    .line 1638
    .local v6, "category_free":Lic/buzzebeeslib/bean/CampaignCategory;
    const-string v17, "Free"

    move-object/from16 v0, v17

    iput-object v0, v6, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    .line 1639
    const-string v17, "type"

    move-object/from16 v0, v17

    iput-object v0, v6, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    .line 1640
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1642
    new-instance v5, Lic/buzzebeeslib/bean/CampaignCategory;

    invoke-direct {v5}, Lic/buzzebeeslib/bean/CampaignCategory;-><init>()V

    .line 1643
    .local v5, "category_deal":Lic/buzzebeeslib/bean/CampaignCategory;
    const-string v17, "Deal"

    move-object/from16 v0, v17

    iput-object v0, v5, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    .line 1644
    const-string v17, "type"

    move-object/from16 v0, v17

    iput-object v0, v5, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    .line 1645
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_13d} :catch_1e0

    .line 1648
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_13e
    :try_start_13e
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_141} :catch_1c5

    move-result v17

    move/from16 v0, v17

    if-lt v9, v0, :cond_153

    .line 1602
    .end local v4    # "category_all":Lic/buzzebeeslib/bean/CampaignCategory;
    .end local v5    # "category_deal":Lic/buzzebeeslib/bean/CampaignCategory;
    .end local v6    # "category_free":Lic/buzzebeeslib/bean/CampaignCategory;
    .end local v9    # "j":I
    .end local v11    # "jsonArrayCat":Lorg/json/JSONArray;
    .end local v12    # "json_category":Lorg/json/JSONObject;
    .end local v15    # "param_cat":Ljava/lang/String;
    :cond_146
    :goto_146
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_f

    .line 1632
    .restart local v4    # "category_all":Lic/buzzebeeslib/bean/CampaignCategory;
    .restart local v11    # "jsonArrayCat":Lorg/json/JSONArray;
    .restart local v12    # "json_category":Lorg/json/JSONObject;
    .restart local v15    # "param_cat":Ljava/lang/String;
    :cond_14a
    const/16 v17, 0x1

    :try_start_14c
    move/from16 v0, v17

    iput-boolean v0, v4, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_150} :catch_1e0

    .line 1633
    const/16 v16, 0x0

    goto :goto_112

    .line 1649
    .restart local v5    # "category_deal":Lic/buzzebeeslib/bean/CampaignCategory;
    .restart local v6    # "category_free":Lic/buzzebeeslib/bean/CampaignCategory;
    .restart local v9    # "j":I
    :cond_153
    :try_start_153
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 1651
    .local v13, "json_subitems":Lorg/json/JSONObject;
    new-instance v3, Lic/buzzebeeslib/bean/CampaignCategory;

    invoke-direct {v3}, Lic/buzzebeeslib/bean/CampaignCategory;-><init>()V

    .line 1652
    .local v3, "category":Lic/buzzebeeslib/bean/CampaignCategory;
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lic/buzzebeeslib/bean/CampaignCategory;->ID:Ljava/lang/String;

    .line 1653
    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    .line 1654
    const-string v17, "mode"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    .line 1655
    const-string v17, "cat"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    .line 1656
    const-string v17, "count"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v3, Lic/buzzebeeslib/bean/CampaignCategory;->Count:I

    .line 1657
    if-eqz v15, :cond_216

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_216

    .line 1658
    iget-object v0, v3, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1be

    .line 1659
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v4, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1660
    add-int/lit8 v16, v9, 0x3

    .line 1667
    :goto_1b8
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1648
    add-int/lit8 v9, v9, 0x1

    goto :goto_13e

    .line 1662
    :cond_1be
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_1c4} :catch_1c5

    goto :goto_1b8

    .line 1669
    .end local v3    # "category":Lic/buzzebeeslib/bean/CampaignCategory;
    .end local v13    # "json_subitems":Lorg/json/JSONObject;
    :catch_1c5
    move-exception v7

    .line 1670
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1c6
    const-string v17, "buzzebees.marketlist.fragment"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "(CATCH)json.toString(2): "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1de} :catch_1e0

    goto/16 :goto_146

    .line 1673
    .end local v4    # "category_all":Lic/buzzebeeslib/bean/CampaignCategory;
    .end local v5    # "category_deal":Lic/buzzebeeslib/bean/CampaignCategory;
    .end local v6    # "category_free":Lic/buzzebeeslib/bean/CampaignCategory;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "j":I
    .end local v11    # "jsonArrayCat":Lorg/json/JSONArray;
    .end local v12    # "json_category":Lorg/json/JSONObject;
    .end local v15    # "param_cat":Ljava/lang/String;
    :catch_1e0
    move-exception v7

    .line 1674
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_1e1
    const-string v17, "buzzebees.marketlist.fragment"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "(GetCampaignCategoryListener|onComplete|for|JSONException):"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1f9} :catch_1fb

    goto/16 :goto_146

    .line 1685
    .end local v2    # "campaignCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignCategory;>;"
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "i":I
    .end local v10    # "jsonArray":Lorg/json/JSONArray;
    .end local v16    # "selected_index":I
    :catch_1fb
    move-exception v7

    .line 1686
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v17, "buzzebees.marketlist.fragment"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "(GetCampaignCategoryListener|onComplete|Exception):"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 1665
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "campaignCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignCategory;>;"
    .restart local v3    # "category":Lic/buzzebeeslib/bean/CampaignCategory;
    .restart local v4    # "category_all":Lic/buzzebeeslib/bean/CampaignCategory;
    .restart local v5    # "category_deal":Lic/buzzebeeslib/bean/CampaignCategory;
    .restart local v6    # "category_free":Lic/buzzebeeslib/bean/CampaignCategory;
    .restart local v8    # "i":I
    .restart local v9    # "j":I
    .restart local v10    # "jsonArray":Lorg/json/JSONArray;
    .restart local v11    # "jsonArrayCat":Lorg/json/JSONArray;
    .restart local v12    # "json_category":Lorg/json/JSONObject;
    .restart local v13    # "json_subitems":Lorg/json/JSONObject;
    .restart local v15    # "param_cat":Ljava/lang/String;
    .restart local v16    # "selected_index":I
    :cond_216
    const/16 v17, 0x0

    :try_start_218
    move/from16 v0, v17

    iput-boolean v0, v4, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_21c} :catch_1c5

    goto :goto_1b8
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 895
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaign(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 753
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getCache_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;I)V
    .registers 2

    .prologue
    .line 110
    iput p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    return-void
.end method

.method static synthetic access$11(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$12(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)J
    .registers 3

    .prologue
    .line 94
    iget-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J

    return-wide v0
.end method

.method static synthetic access$15(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 769
    invoke-direct/range {p0 .. p10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lic/buzzebeeslib/control/PullToRefreshGridView;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    return-object v0
.end method

.method static synthetic access$20(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$21(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Z
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsHasData:Z

    return v0
.end method

.method static synthetic access$22(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$23(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$24(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gContentFooter:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$25(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mListState:Landroid/os/Parcelable;

    return-void
.end method

.method static synthetic access$26(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;I)V
    .registers 2

    .prologue
    .line 120
    iput p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mItemPosition:I

    return-void
.end method

.method static synthetic access$27(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;I)V
    .registers 2

    .prologue
    .line 119
    iput p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mListPosition:I

    return-void
.end method

.method static synthetic access$28(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    return-object v0
.end method

.method static synthetic access$29(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->RC_MARKET_DETAIL:I

    return v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->booleanCancelRunnable:Z

    return v0
.end method

.method static synthetic access$30(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Z
    .registers 2

    .prologue
    .line 727
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->get_all()Z

    move-result v0

    return v0
.end method

.method static synthetic access$31(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I

    return v0
.end method

.method static synthetic access$32(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    return v0
.end method

.method static synthetic access$33(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Z)V
    .registers 2

    .prologue
    .line 106
    iput-boolean p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsHasData:Z

    return-void
.end method

.method static synthetic access$34(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)V
    .registers 1

    .prologue
    .line 956
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->setCampaignUI()V

    return-void
.end method

.method static synthetic access$35(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->contentQT:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Z)V
    .registers 2

    .prologue
    .line 105
    iput-boolean p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsLoadingMore:Z

    return-void
.end method

.method static synthetic access$5(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gRunnable2:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method static synthetic access$9(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1597
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaignCategory(Ljava/lang/String;)V

    return-void
.end method

.method private getCache_name()Ljava/lang/String;
    .registers 4

    .prologue
    .line 754
    const/4 v0, 0x0

    .line 755
    .local v0, "cache_name":Ljava/lang/String;
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 756
    const-string v0, "market_free"

    .line 766
    :goto_8
    return-object v0

    .line 757
    :cond_9
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 758
    const-string v0, "market_draw"

    .line 759
    goto :goto_8

    :cond_11
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 760
    const-string v0, "market_deal"

    .line 761
    goto :goto_8

    :cond_19
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_21

    .line 762
    const-string v0, "market_all"

    .line 763
    goto :goto_8

    .line 764
    :cond_21
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private get_all()Z
    .registers 6

    .prologue
    .line 728
    const/4 v0, 0x1

    .line 729
    .local v0, "isAll":Z
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 730
    const/4 v0, 0x0

    .line 732
    :cond_c
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 733
    const/4 v0, 0x0

    .line 735
    :cond_17
    iget-wide v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_20

    .line 736
    const/4 v0, 0x0

    .line 738
    :cond_20
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 739
    const/4 v0, 0x0

    .line 741
    :cond_2b
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 742
    const/4 v0, 0x0

    .line 744
    :cond_36
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 745
    const/4 v0, 0x0

    .line 747
    :cond_45
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    if-lez v1, :cond_4a

    .line 748
    const/4 v0, 0x0

    .line 750
    :cond_4a
    return v0
.end method

.method private loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "is_first_load"    # Z
    .param p2, "TextSearch"    # Ljava/lang/String;
    .param p3, "filter_category_id"    # Ljava/lang/String;
    .param p4, "filter_points"    # J
    .param p6, "filter_center"    # Ljava/lang/String;
    .param p7, "filter_mode"    # Ljava/lang/String;
    .param p8, "filter_sponsor"    # Ljava/lang/String;
    .param p9, "filter_location"    # Ljava/lang/String;
    .param p10, "from"    # Ljava/lang/String;

    .prologue
    .line 771
    iget-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsLoadingMore:Z

    if-eqz v2, :cond_c

    .line 772
    const-string v2, "buzzebees.marketlist.fragment"

    const-string v3, "loadCampaign --> can not load, because the current loading is not finish..."

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_b
    :goto_b
    return-void

    .line 776
    :cond_c
    if-eqz p1, :cond_11

    .line 777
    const/4 v2, 0x0

    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    .line 780
    :cond_11
    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    if-nez v2, :cond_1d

    const-string v2, "onScroll"

    invoke-virtual {p10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 784
    :cond_1d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsLoadingMore:Z

    .line 786
    const-string v2, "buzzebees.marketlist.fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadCampaign : gTabState"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gCurrentFilterMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/campaign?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&device_app_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "402705486466922"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sponsorId=0&format=json&type=list2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, "url":Ljava/lang/String;
    const/4 v0, 0x1

    .line 792
    .local v0, "isAll":Z
    const-string v2, ""

    invoke-virtual {p7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    .line 793
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

    .line 797
    :cond_95
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 798
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

    .line 799
    const/4 v0, 0x0

    .line 802
    :cond_b5
    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d5

    .line 803
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

    .line 804
    const/4 v0, 0x0

    .line 807
    :cond_d5
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-ltz v2, :cond_f3

    .line 808
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

    .line 809
    const/4 v0, 0x0

    .line 812
    :cond_f3
    const-string v2, ""

    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_113

    .line 813
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

    .line 814
    const/4 v0, 0x0

    .line 817
    :cond_113
    const-string v2, ""

    invoke-virtual {p8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_133

    .line 818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 819
    const/4 v0, 0x0

    .line 822
    :cond_133
    if-eqz p9, :cond_155

    const-string v2, ""

    invoke-virtual {p9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_155

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 824
    const/4 v0, 0x0

    .line 827
    :cond_155
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->strHashtag:Ljava/lang/String;

    if-eqz v2, :cond_17d

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->strHashtag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17d

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&tags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->strHashtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    const/4 v0, 0x0

    .line 832
    :cond_17d
    sget-object v2, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v3, "com.ptt.BlueCard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&sortby=profile_score"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 834
    const/4 v0, 0x0

    .line 837
    :cond_19b
    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    if-lez v2, :cond_1a0

    .line 838
    const/4 v0, 0x0

    .line 841
    :cond_1a0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsLoadingMore:Z

    .line 843
    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    if-eqz v2, :cond_1c0

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&$skip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 849
    :cond_1c0
    const-string v2, "buzzebees.marketlist.fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    new-instance v2, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Z)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_b
.end method

.method private loadCampaignCategory(Z)V
    .registers 6
    .param p1, "is_filter_cat"    # Z

    .prologue
    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaigncat/full_menu_ads?device_locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1541
    .local v0, "url":Ljava/lang/String;
    const-string v1, "buzzebees.marketlist.fragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(loadCampaignCategory)url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    const/4 v1, 0x0

    new-instance v2, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;

    invoke-direct {v2, p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignCategoryListener;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Z)V

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1543
    return-void
.end method

.method private loadCampaignCategoryFromCache()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1524
    const-string v2, "category_buzzebees_lib"

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, "catch_category":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1526
    invoke-direct {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaignCategory(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "cat"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1529
    .local v1, "param_cat":Ljava/lang/String;
    if-eqz v1, :cond_2d

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1530
    invoke-virtual {p0, v1, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterCat(Ljava/lang/String;Z)V

    .line 1533
    :cond_2d
    invoke-direct {p0, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->loadCampaignCategory(Z)V

    .line 1537
    .end local v1    # "param_cat":Ljava/lang/String;
    :goto_30
    return-void

    .line 1535
    :cond_31
    invoke-direct {p0, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->loadCampaignCategory(Z)V

    goto :goto_30
.end method

.method private qtMarketBzbs()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/high16 v9, 0x41200000

    const/high16 v10, 0x40400000

    .line 1813
    sget v7, Lic/buzzebeeslib/R$id;->contentQT:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->contentQT:Landroid/widget/RelativeLayout;

    .line 1814
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->contentQT:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1815
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->contentQT:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1817
    sget v7, Lic/buzzebeeslib/R$id;->linCircle:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1818
    .local v3, "linCircle":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->GetPixelFromDips(F)I

    move-result v7

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->GetPixelFromDips(F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1819
    .local v6, "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->GetPixelFromDips(F)I

    move-result v7

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->GetPixelFromDips(F)I

    move-result v8

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->GetPixelFromDips(F)I

    move-result v9

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->GetPixelFromDips(F)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1820
    const/4 v4, 0x4

    .line 1821
    .local v4, "numPage":I
    new-array v7, v4, [Ljava/lang/Integer;

    iput-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->arrImg:[Ljava/lang/Integer;

    .line 1822
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_48
    const/4 v7, 0x4

    if-lt v1, v7, :cond_78

    .line 1827
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->arrImg:[Ljava/lang/Integer;

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v2, v7, [Landroid/widget/ImageView;

    .line 1828
    .local v2, "imgCircle":[Landroid/widget/ImageView;
    const/4 v1, 0x0

    :goto_53
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->arrImg:[Ljava/lang/Integer;

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    if-lt v1, v7, :cond_a2

    .line 1839
    sget v7, Lic/buzzebeeslib/R$id;->vpQT:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    .line 1840
    .local v5, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v5, v11}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 1841
    new-instance v7, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$QTPagerAdapter;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->arrImg:[Ljava/lang/Integer;

    invoke-direct {v7, p0, v8}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$QTPagerAdapter;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;[Ljava/lang/Integer;)V

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1843
    new-instance v7, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$10;

    invoke-direct {v7, p0, v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$10;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;[Landroid/widget/ImageView;)V

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1871
    return-void

    .line 1823
    .end local v2    # "imgCircle":[Landroid/widget/ImageView;
    .end local v5    # "pager":Landroid/support/v4/view/ViewPager;
    :cond_78
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "qt_bzbs"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1824
    .local v0, "ResID":I
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->arrImg:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 1822
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 1829
    .end local v0    # "ResID":I
    .restart local v2    # "imgCircle":[Landroid/widget/ImageView;
    :cond_a2
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v7, v2, v1

    .line 1830
    aget-object v7, v2, v1

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1831
    if-nez v1, :cond_c3

    .line 1832
    aget-object v7, v2, v1

    sget v8, Lic/buzzebeeslib/R$drawable;->rounded_circle_selected:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1836
    :goto_bb
    aget-object v7, v2, v1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1828
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 1834
    :cond_c3
    aget-object v7, v2, v1

    sget v8, Lic/buzzebeeslib/R$drawable;->rounded_circle:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_bb
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 692
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 694
    const-string v0, "gCampaignViews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;

    .line 696
    const-string v0, "gCurrentFilterTextSearch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    .line 697
    const-string v0, "gCurrentFilterCategory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 698
    const-string v0, "gCurrentFilterPoints"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J

    .line 699
    const-string v0, "gCurrentFilterCenter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;

    .line 700
    const-string v0, "gCurrentFilterMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    .line 701
    const-string v0, "gCurrentFilterSponsor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 702
    const-string v0, "gCurrentFilterPlace"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;

    .line 704
    const-string v0, "gIsLoadingMore"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsLoadingMore:Z

    .line 705
    const-string v0, "gIsHasData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsHasData:Z

    .line 707
    const-string v0, "gSumListPerPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    .line 713
    :cond_62
    return-void
.end method

.method private setCampaignUI()V
    .registers 3

    .prologue
    .line 957
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    if-nez v0, :cond_5

    .line 980
    :goto_4
    return-void

    .line 961
    :cond_5
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    if-nez v0, :cond_32

    .line 962
    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Landroid/content/Context;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    .line 963
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 965
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 979
    :goto_27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsLoadingMore:Z

    goto :goto_4

    .line 967
    :cond_2b
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_27

    .line 970
    :cond_32
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->notifyDataSetChanged()V

    .line 971
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshGridView;->refreshDrawableState()V

    goto :goto_27
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 1936
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1938
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public UpdatePoint(J)V
    .registers 6
    .param p1, "points"    # J

    .prologue
    .line 1476
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "public void UpdatePoint("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    return-void
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 992
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->finish()V

    .line 993
    return-void
.end method

.method public doBasket(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "payment/ShoppingCart.aspx?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 986
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 987
    .local v0, "intent1":Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->startActivity(Landroid/content/Intent;)V

    .line 989
    return-void
.end method

.method public doFilterAll()V
    .registers 16

    .prologue
    .line 1129
    sget v0, Lic/buzzebeeslib/R$id;->listFilter:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 1130
    .local v13, "listFilter":Landroid/widget/ListView;
    invoke-virtual {v13}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;

    .line 1131
    .local v11, "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    if-eqz v11, :cond_1e

    .line 1132
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_11
    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v12, v0, :cond_62

    .line 1140
    invoke-virtual {v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->notifyDataSetChanged()V

    .line 1143
    .end local v12    # "i":I
    :cond_1e
    const-string v0, "all"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    .line 1144
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1145
    const/4 v0, 0x0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    .line 1146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;

    .line 1149
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doFilterAll |gCurrentFilterTextSearch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const/4 v1, 0x1

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;

    const-string v10, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gContentFooter:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1162
    return-void

    .line 1133
    .restart local v12    # "i":I
    :cond_62
    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 1134
    .local v14, "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    const/4 v0, 0x0

    iput-boolean v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1136
    iget-object v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v1, "All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1137
    const/4 v0, 0x1

    iput-boolean v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1132
    :cond_86
    add-int/lit8 v12, v12, 0x1

    goto :goto_11
.end method

.method public doFilterCat(Ljava/lang/String;Z)V
    .registers 21
    .param p1, "cat"    # Ljava/lang/String;
    .param p2, "auto_focus_cat"    # Z

    .prologue
    .line 1165
    sget v2, Lic/buzzebeeslib/R$id;->listFilter:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ListView;

    .line 1166
    .local v15, "listFilter":Landroid/widget/ListView;
    invoke-virtual {v15}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    check-cast v13, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;

    .line 1167
    .local v13, "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    if-eqz v13, :cond_29

    .line 1168
    const/16 v17, 0x0

    .line 1169
    .local v17, "selected_item":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_15
    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;
    invoke-static {v13}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v14, v2, :cond_88

    .line 1181
    invoke-virtual {v13}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->notifyDataSetChanged()V

    .line 1182
    if-eqz p2, :cond_29

    .line 1183
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1187
    .end local v14    # "i":I
    .end local v17    # "selected_item":I
    :cond_29
    const-string v2, "all"

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    .line 1188
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1189
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    .line 1190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;

    .line 1193
    const-string v2, "buzzebees.marketlist.fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doFilterAll |gCurrentFilterTextSearch "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;

    const-string v12, ""

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gContentFooter:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1206
    return-void

    .line 1170
    .restart local v14    # "i":I
    .restart local v17    # "selected_item":I
    :cond_88
    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;
    invoke-static {v13}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 1171
    .local v16, "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1175
    move-object/from16 v0, v16

    iget-object v2, v0, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    const-string v3, "cat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    move-object/from16 v0, v16

    iget-object v2, v0, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 1177
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1178
    move/from16 v17, v14

    .line 1169
    :cond_b6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_15
.end method

.method public doFilterDeal()V
    .registers 16

    .prologue
    .line 1093
    sget v0, Lic/buzzebeeslib/R$id;->listFilter:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 1094
    .local v13, "listFilter":Landroid/widget/ListView;
    invoke-virtual {v13}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;

    .line 1095
    .local v11, "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    if-eqz v11, :cond_1e

    .line 1096
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_11
    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v12, v0, :cond_53

    .line 1104
    invoke-virtual {v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->notifyDataSetChanged()V

    .line 1107
    .end local v12    # "i":I
    :cond_1e
    const-string v0, "deal"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    .line 1108
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1109
    const/4 v0, 0x0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    .line 1110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;

    .line 1113
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "doFilterDeal"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const/4 v1, 0x1

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;

    const-string v10, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gContentFooter:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1126
    return-void

    .line 1097
    .restart local v12    # "i":I
    :cond_53
    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 1098
    .local v14, "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    const/4 v0, 0x0

    iput-boolean v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1100
    iget-object v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v1, "Deal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1101
    const/4 v0, 0x1

    iput-boolean v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1096
    :cond_77
    add-int/lit8 v12, v12, 0x1

    goto :goto_11
.end method

.method public doFilterDraw()V
    .registers 16

    .prologue
    .line 1058
    sget v0, Lic/buzzebeeslib/R$id;->listFilter:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 1059
    .local v13, "listFilter":Landroid/widget/ListView;
    invoke-virtual {v13}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;

    .line 1060
    .local v11, "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    if-eqz v11, :cond_1e

    .line 1061
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_11
    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v12, v0, :cond_4c

    .line 1069
    invoke-virtual {v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->notifyDataSetChanged()V

    .line 1072
    .end local v12    # "i":I
    :cond_1e
    const-string v0, "draw"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    .line 1073
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1074
    const/4 v0, 0x0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    .line 1075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;

    .line 1078
    const/4 v1, 0x1

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;

    const-string v10, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gContentFooter:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1090
    return-void

    .line 1062
    .restart local v12    # "i":I
    :cond_4c
    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 1063
    .local v14, "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    const/4 v0, 0x0

    iput-boolean v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1065
    iget-object v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v1, "Draw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1066
    const/4 v0, 0x1

    iput-boolean v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1061
    :cond_70
    add-int/lit8 v12, v12, 0x1

    goto :goto_11
.end method

.method public doFilterFree()V
    .registers 16

    .prologue
    .line 1022
    sget v0, Lic/buzzebeeslib/R$id;->listFilter:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 1023
    .local v13, "listFilter":Landroid/widget/ListView;
    invoke-virtual {v13}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;

    .line 1024
    .local v11, "adapter":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
    if-eqz v11, :cond_1e

    .line 1025
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_11
    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v12, v0, :cond_4c

    .line 1033
    invoke-virtual {v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->notifyDataSetChanged()V

    .line 1037
    .end local v12    # "i":I
    :cond_1e
    const-string v0, "draw_free_ads"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    .line 1038
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1039
    const/4 v0, 0x0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    .line 1040
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;

    .line 1043
    const/4 v1, 0x1

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;

    const-string v10, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gContentFooter:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1055
    return-void

    .line 1026
    .restart local v12    # "i":I
    :cond_4c
    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 1027
    .local v14, "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    const/4 v0, 0x0

    iput-boolean v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1029
    iget-object v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v1, "Free"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1030
    const/4 v0, 0x1

    iput-boolean v0, v14, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1025
    :cond_70
    add-int/lit8 v12, v12, 0x1

    goto :goto_11
.end method

.method public doRefresh()V
    .registers 12

    .prologue
    .line 996
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "doRefresh"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const/4 v1, 0x1

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;

    const-string v10, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$8;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$8;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)V

    iput-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gRunnable3:Ljava/lang/Runnable;

    .line 1006
    const-wide/16 v2, 0x3e8

    .line 999
    invoke-virtual {v0, v1, v2, v3}, Lic/buzzebeeslib/control/PullToRefreshGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1007
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    if-eqz p1, :cond_5

    .line 298
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 301
    :cond_5
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    new-instance v3, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$2;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$2;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/PullToRefreshGridView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;)V

    .line 320
    const/4 v2, 0x0

    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->myLastVisiblePos:I

    .line 321
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    new-instance v3, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/PullToRefreshGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 385
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    new-instance v3, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$4;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/PullToRefreshGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 412
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "cat"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "param_cat":Ljava/lang/String;
    if-eqz v1, :cond_3a

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 416
    :cond_3a
    const/4 v2, 0x4

    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I

    .line 417
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    new-instance v3, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;

    invoke-direct {v3, p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Landroid/os/Bundle;)V

    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gRunnable1:Ljava/lang/Runnable;

    .line 501
    const-wide/16 v4, 0x64

    .line 417
    invoke-virtual {v2, v3, v4, v5}, Lic/buzzebeeslib/control/PullToRefreshGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 504
    :cond_4b
    sget v2, Lic/buzzebeeslib/R$id;->listFilter:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 505
    .local v0, "listFilter":Landroid/widget/ListView;
    new-instance v2, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$6;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Landroid/widget/ListView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 536
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->loadCampaignCategoryFromCache()V

    .line 537
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 717
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 718
    const/4 v0, -0x1

    if-ne p2, v0, :cond_13

    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->RC_MARKET_DETAIL:I

    if-ne p1, v0, :cond_13

    .line 719
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    if-eqz v0, :cond_13

    .line 720
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;->notifyDataSetChanged()V

    .line 725
    :cond_13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mHandler:Landroid/os/Handler;

    .line 158
    iput-boolean v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->booleanCancelRunnable:Z

    .line 161
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 164
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 165
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 167
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "cache_market"

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 169
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 170
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 171
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gScreenHeight:I

    .line 172
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gScreenWidth:I

    .line 174
    iget v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gScreenWidth:I

    .line 175
    .local v5, "width":I
    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gScreenHeight:I

    .line 177
    .local v2, "height":I
    if-le v2, v5, :cond_a0

    .end local v2    # "height":I
    :goto_56
    div-int/lit8 v3, v2, 0x2

    .line 178
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 179
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 180
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 181
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v6, v8}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 184
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->onCreateView(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 191
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    const-string v7, "UA-42649771-1"

    invoke-virtual {v6, v7}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 197
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v6

    const/16 v7, 0x1e

    invoke-virtual {v6, v7}, Lcom/google/analytics/tracking/android/GAServiceManager;->setDispatchPeriod(I)V

    .line 199
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v7, "MARKETPLACE_BZBS_LIST"

    invoke-virtual {v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 200
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_a0
    move v2, v5

    .line 177
    goto :goto_56
.end method

.method public onCreateView(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    sget v4, Lic/buzzebeeslib/R$layout;->bz_market_place_fragment_list3:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->setContentView(I)V

    .line 215
    sget v4, Lic/buzzebeeslib/R$id;->gridCampaign:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/control/PullToRefreshGridView;

    iput-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    .line 216
    sget v4, Lic/buzzebeeslib/R$id;->contentFooter:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gContentFooter:Landroid/widget/LinearLayout;

    .line 217
    sget v4, Lic/buzzebeeslib/R$id;->contentFilter:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gContentFilter:Landroid/widget/LinearLayout;

    .line 221
    sget v4, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 224
    .local v3, "tvPageHeader":Landroid/widget/TextView;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 233
    sget v4, Lic/buzzebeeslib/R$id;->layoutButtonMenu:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 234
    .local v1, "layoutButtonMenu":Landroid/widget/RelativeLayout;
    new-instance v4, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "hashtags"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->strHashtag:Ljava/lang/String;

    .line 274
    sget v4, Lic/buzzebeeslib/R$id;->layoutButtonBasket:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 275
    .local v0, "layoutButtonBasket":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "tokenBzBs":Ljava/lang/String;
    if-eqz v2, :cond_72

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_72

    .line 277
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 282
    :goto_6e
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->onActivityCreated(Landroid/os/Bundle;)V

    .line 283
    return-void

    .line 279
    :cond_72
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6e
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 605
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 609
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->onDestroyView()V

    .line 613
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 615
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 617
    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketPlace3Adapter;

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;

    .line 619
    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    .line 621
    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mHandler:Landroid/os/Handler;

    .line 623
    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gListNearBy:Landroid/widget/ListView;

    .line 625
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    .line 626
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    .line 627
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J

    .line 628
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;

    .line 629
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    .line 630
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 631
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;

    .line 633
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsLoadingMore:Z

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsHasData:Z

    .line 636
    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gRunnable:Ljava/lang/Runnable;

    .line 637
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    .line 639
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I

    .line 641
    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mListState:Landroid/os/Parcelable;

    .line 642
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mListPosition:I

    .line 643
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mItemPosition:I

    .line 645
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gLastTimeShowBuyPoint:J

    .line 647
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gScreenWidth:I

    .line 648
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gScreenHeight:I

    .line 649
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->booleanCancelRunnable:Z

    .line 593
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gRunnable1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 594
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gRunnable2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 595
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gRunnable3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 600
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 601
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 572
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 577
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 578
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 580
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->clearPostListener()V

    .line 581
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 549
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 554
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 556
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSDK_INT:I

    .line 558
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 559
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 560
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gDpi:I

    .line 562
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/LibUserLogin;->GetIsPlayMarketBzBsTutorial(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 563
    sget-object v1, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v2, "com.samsung.privilege"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 564
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lic/buzzebeeslib/LibUserLogin;->SetIsPlayMarketBzBsTutorial(Landroid/content/Context;Z)Z

    .line 565
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->qtMarketBzbs()V

    .line 568
    :cond_40
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 653
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 665
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 667
    const-string v0, "gCampaignViews"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 669
    const-string v0, "gCurrentFilterTextSearch"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v0, "gCurrentFilterCategory"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v0, "gCurrentFilterPoints"

    iget-wide v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 672
    const-string v0, "gCurrentFilterCenter"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v0, "gCurrentFilterMode"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v0, "gCurrentFilterSponsor"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v0, "gCurrentFilterPlace"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v0, "gIsLoadingMore"

    iget-boolean v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsLoadingMore:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 678
    const-string v0, "gIsHasData"

    iget-boolean v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsHasData:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 680
    const-string v0, "gSumListPerPage"

    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gSumListPerPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 681
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 541
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 545
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 585
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 589
    return-void
.end method

.method public playPointsAndBadge()V
    .registers 3

    .prologue
    .line 1500
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "private void playPointsAndBadge() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1010
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$9;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$9;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1017
    return-void
.end method
