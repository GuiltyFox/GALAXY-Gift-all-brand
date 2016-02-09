.class public Lic/buzzebeeslib/fragment/CampaignCategoryFragment;
.super Landroid/support/v4/app/ListFragment;
.source "CampaignCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;,
        Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;,
        Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;,
        Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_market"


# instance fields
.field private TAG:Ljava/lang/String;

.field public gAdapter:Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;

.field private gHandler:Landroid/os/Handler;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mLeak:Landroid/view/View;

.field private paramCatID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 43
    const-class v0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->paramCatID:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->processJsonCategory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method private loadCampaignCategory()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_8

    .line 193
    :goto_7
    return-void

    .line 190
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaigncat/full_menu_group?device_locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(loadCampaignCategory)url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v1, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;

    invoke-direct {v1, p0, v4}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;-><init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;Lic/buzzebeeslib/fragment/CampaignCategoryFragment$GetCampaignCategoryListener;)V

    invoke-static {v0, v4, v1}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_7
.end method

.method private loadCampaignCategoryFromCatch()V
    .registers 4

    .prologue
    .line 173
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_7

    .line 183
    :goto_6
    return-void

    .line 177
    :cond_7
    const-string v1, "category_platinum"

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "catch_category_gift":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 179
    invoke-direct {p0, v0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->processJsonCategory(Ljava/lang/String;)V

    .line 182
    :cond_1c
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->loadCampaignCategory()V

    goto :goto_6
.end method

.method private processJsonCategory(Ljava/lang/String;)V
    .registers 16
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v10, "listCats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignCategoryDynamic;>;"
    new-instance v11, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    const-string v12, "MyPoints"

    invoke-direct {v11, v12}, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v11, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    const-string v12, "ViewAll"

    invoke-direct {v11, v12}, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v11, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->paramCatID:Ljava/lang/String;

    if-eqz v11, :cond_8f

    iget-object v11, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->paramCatID:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8f

    .line 229
    :try_start_27
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 230
    .local v6, "jsonRoot":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_e7

    move-result v11

    if-lt v2, v11, :cond_4b

    .line 284
    .end local v2    # "i":I
    .end local v6    # "jsonRoot":Lorg/json/JSONArray;
    :cond_33
    :goto_33
    new-instance v11, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-direct {v11, p0, v12}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;-><init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;Landroid/content/Context;)V

    iput-object v11, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->gAdapter:Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;

    .line 285
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v2, v11, :cond_cc

    .line 288
    iget-object v11, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->gAdapter:Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 289
    return-void

    .line 232
    .restart local v6    # "jsonRoot":Lorg/json/JSONArray;
    :cond_4b
    :try_start_4b
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 233
    .local v5, "jsonItem":Lorg/json/JSONObject;
    const-string v11, "cat"

    invoke-static {v5, v11}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "cat":Ljava/lang/String;
    iget-object v11, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->paramCatID:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 238
    iget-object v11, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mLeak:Landroid/view/View;

    sget v12, Lic/buzzebeeslib/R$id;->TabbarHeader:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 239
    .local v0, "TabbarHeader":Landroid/widget/RelativeLayout;
    iget-object v11, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->paramCatID:Ljava/lang/String;

    invoke-static {v11}, Lic/buzzebeeslib/LibConst;->GET_COLOR_CAT(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 241
    const-string v11, "subcats"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 242
    .local v8, "json_subcats":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_77
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_7a} :catch_ea

    move-result v11

    if-lt v4, v11, :cond_80

    .line 230
    .end local v0    # "TabbarHeader":Landroid/widget/RelativeLayout;
    .end local v1    # "cat":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v5    # "jsonItem":Lorg/json/JSONObject;
    .end local v8    # "json_subcats":Lorg/json/JSONArray;
    :cond_7d
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 244
    .restart local v0    # "TabbarHeader":Landroid/widget/RelativeLayout;
    .restart local v1    # "cat":Ljava/lang/String;
    .restart local v4    # "j":I
    .restart local v5    # "jsonItem":Lorg/json/JSONObject;
    .restart local v8    # "json_subcats":Lorg/json/JSONArray;
    :cond_80
    :try_start_80
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 245
    .local v7, "json_cat":Lorg/json/JSONObject;
    new-instance v11, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    invoke-direct {v11, v7}, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8c} :catch_ec

    .line 242
    .end local v7    # "json_cat":Lorg/json/JSONObject;
    :goto_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 260
    .end local v0    # "TabbarHeader":Landroid/widget/RelativeLayout;
    .end local v1    # "cat":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v5    # "jsonItem":Lorg/json/JSONObject;
    .end local v6    # "jsonRoot":Lorg/json/JSONArray;
    .end local v8    # "json_subcats":Lorg/json/JSONArray;
    :cond_8f
    :try_start_8f
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 261
    .restart local v6    # "jsonRoot":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_95
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_98} :catch_e0

    move-result v11

    if-ge v2, v11, :cond_33

    .line 263
    :try_start_9b
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 264
    .restart local v5    # "jsonItem":Lorg/json/JSONObject;
    const-string v11, "id"

    invoke-static {v5, v11}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "id":Ljava/lang/String;
    const-string v11, "cat"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ba

    .line 266
    const-string v11, "subitems"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 267
    .local v9, "json_subitems":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_b4
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_b7} :catch_e3

    move-result v11

    if-lt v4, v11, :cond_bd

    .line 261
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v5    # "jsonItem":Lorg/json/JSONObject;
    .end local v9    # "json_subitems":Lorg/json/JSONArray;
    :cond_ba
    :goto_ba
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 269
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "j":I
    .restart local v5    # "jsonItem":Lorg/json/JSONObject;
    .restart local v9    # "json_subitems":Lorg/json/JSONArray;
    :cond_bd
    :try_start_bd
    new-instance v11, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c9} :catch_e5

    .line 267
    :goto_c9
    add-int/lit8 v4, v4, 0x1

    goto :goto_b4

    .line 286
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v5    # "jsonItem":Lorg/json/JSONObject;
    .end local v6    # "jsonRoot":Lorg/json/JSONArray;
    .end local v9    # "json_subitems":Lorg/json/JSONArray;
    :cond_cc
    iget-object v12, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->gAdapter:Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;

    new-instance v13, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    invoke-direct {v13, p0, v11}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;-><init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;Lic/buzzebeeslib/bean/CampaignCategoryDynamic;)V

    invoke-virtual {v12, v13}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuSlideAdapter;->add(Ljava/lang/Object;)V

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3f

    .line 279
    .end local v2    # "i":I
    :catch_e0
    move-exception v11

    goto/16 :goto_33

    .line 275
    .restart local v2    # "i":I
    .restart local v6    # "jsonRoot":Lorg/json/JSONArray;
    :catch_e3
    move-exception v11

    goto :goto_ba

    .line 270
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "j":I
    .restart local v5    # "jsonItem":Lorg/json/JSONObject;
    .restart local v9    # "json_subitems":Lorg/json/JSONArray;
    :catch_e5
    move-exception v11

    goto :goto_c9

    .line 255
    .end local v2    # "i":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v5    # "jsonItem":Lorg/json/JSONObject;
    .end local v6    # "jsonRoot":Lorg/json/JSONArray;
    .end local v9    # "json_subitems":Lorg/json/JSONArray;
    :catch_e7
    move-exception v11

    goto/16 :goto_33

    .line 251
    .restart local v2    # "i":I
    .restart local v6    # "jsonRoot":Lorg/json/JSONArray;
    :catch_ea
    move-exception v11

    goto :goto_7d

    .line 246
    .restart local v0    # "TabbarHeader":Landroid/widget/RelativeLayout;
    .restart local v1    # "cat":Ljava/lang/String;
    .restart local v4    # "j":I
    .restart local v5    # "jsonItem":Lorg/json/JSONObject;
    .restart local v8    # "json_subcats":Lorg/json/JSONArray;
    :catch_ec
    move-exception v11

    goto :goto_8c
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$1;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$1;-><init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->setRetainInstance(Z)V

    .line 63
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->gHandler:Landroid/os/Handler;

    .line 65
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "cat_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->paramCatID:Ljava/lang/String;

    .line 68
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 69
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 71
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "cache_market"

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 73
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 74
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 75
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->gScreenHeight:I

    .line 76
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->gScreenWidth:I

    .line 78
    iget v5, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->gScreenWidth:I

    .line 79
    .local v5, "width":I
    iget v2, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->gScreenHeight:I

    .line 81
    .local v2, "height":I
    if-le v2, v5, :cond_98

    .end local v2    # "height":I
    :goto_6c
    div-int/lit8 v3, v2, 0x2

    .line 82
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 83
    iget-object v6, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 84
    iget-object v6, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 85
    iget-object v6, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 87
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_98
    move v2, v5

    .line 81
    goto :goto_6c
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    sget v2, Lic/buzzebeeslib/R$layout;->bz_campaign_category_list:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mLeak:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/kit55p.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 95
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    iget-object v2, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mLeak:Landroid/view/View;

    sget v3, Lic/buzzebeeslib/R$id;->tvHeaderMenu:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, "tvHeaderMenu":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    iget-object v2, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mLeak:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 134
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->TAG:Ljava/lang/String;

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 137
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 13
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 141
    invoke-super/range {p0 .. p5}, Landroid/support/v4/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 145
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_a

    .line 170
    :cond_9
    :goto_9
    return-void

    .line 148
    :cond_a
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 149
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;

    .line 150
    .local v1, "objCampaignListBuzzebeesActivity":Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;
    iget-object v5, v1, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mContent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 151
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;

    .line 153
    .local v3, "objMenuItem":Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;
    iget-object v5, v3, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;->campaignCategory:Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;

    const-string v6, "MyPoints"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_67

    .line 155
    iget-object v5, v3, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;->campaignCategory:Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;

    const-string v6, "ViewAll"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 156
    iget-object v2, v1, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mContent:Landroid/support/v4/app/Fragment;

    check-cast v2, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    .line 157
    .local v2, "objMarketPlaceList2Fragment":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterAll()V

    .line 166
    .end local v1    # "objCampaignListBuzzebeesActivity":Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;
    .end local v2    # "objMarketPlaceList2Fragment":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    .end local v3    # "objMenuItem":Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;
    :cond_67
    :goto_67
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    instance-of v5, v5, Lic/buzzebeeslib/activity/BaseSlidingActivity;

    if-eqz v5, :cond_9

    .line 167
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/activity/BaseSlidingActivity;

    .line 168
    .local v4, "ra":Lic/buzzebeeslib/activity/BaseSlidingActivity;
    invoke-virtual {v4}, Lic/buzzebeeslib/activity/BaseSlidingActivity;->ShowSlidingMenu()V

    goto :goto_9

    .line 159
    .end local v4    # "ra":Lic/buzzebeeslib/activity/BaseSlidingActivity;
    .restart local v1    # "objCampaignListBuzzebeesActivity":Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;
    .restart local v3    # "objMenuItem":Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;
    :cond_79
    iget-object v2, v1, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mContent:Landroid/support/v4/app/Fragment;

    check-cast v2, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    .line 160
    .restart local v2    # "objMarketPlaceList2Fragment":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    iget-object v5, v3, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$MenuItem;->campaignCategory:Lic/buzzebeeslib/bean/CampaignCategoryDynamic;

    iget v5, v5, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->cat:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "cat":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterCat(Ljava/lang/String;)V

    goto :goto_67
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 124
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 125
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->TAG:Ljava/lang/String;

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 128
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 129
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 109
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_11

    .line 120
    :goto_10
    return-void

    .line 115
    :cond_11
    iget-object v0, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 117
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 119
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->loadCampaignCategoryFromCatch()V

    goto :goto_10
.end method
