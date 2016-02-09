.class public Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MarketReviewLikeListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;,
        Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_review"

.field private static LOGCAT:Ljava/lang/String;


# instance fields
.field private etTextSearch:Landroid/widget/EditText;

.field protected gActivity:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

.field private gAdapter:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;

.field private gMarketReviewLikes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignReviewLike;",
            ">;"
        }
    .end annotation
.end field

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

.field private pbLoadingList:Landroid/widget/ProgressBar;

.field private uri:Landroid/net/Uri;

.field protected whoClickLikeList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "MarketReviewLikeListActivity"

    sput-object v0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->LOGCAT:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->gMarketReviewLikes:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->gMarketReviewLikes:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->gMarketReviewLikes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->pbLoadingList:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->etTextSearch:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->showWhoClickLike(Ljava/lang/String;)V

    return-void
.end method

.method private showWhoClickLike(Ljava/lang/String;)V
    .registers 7
    .param p1, "pKeyword"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 200
    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$3;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$3;-><init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)V

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/likes?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_59

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_59
    sget-object v1, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->LOGCAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;

    invoke-direct {v1, p0, v4}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;)V

    invoke-static {v0, v4, v1}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 212
    return-void
.end method


# virtual methods
.method public doDeleteTextSearch(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->etTextSearch:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    return-void
.end method

.method public doGotoWall(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    .local v0, "uid":Ljava/lang/String;
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->requestWindowFeature(I)Z

    .line 75
    invoke-static {p0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 76
    sget v10, Lic/buzzebeeslib/R$layout;->bz_market_review_like_list:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->setContentView(I)V

    .line 78
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object p0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->gActivity:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    .line 82
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 83
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 85
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "cache_review"

    invoke-direct {v0, v10, v11}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x3e800000

    invoke-virtual {v0, v10, v11}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 87
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 88
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->gScreenHeight:I

    .line 90
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->gScreenWidth:I

    .line 92
    iget v9, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->gScreenWidth:I

    .line 93
    .local v9, "width":I
    iget v3, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->gScreenHeight:I

    .line 95
    .local v3, "height":I
    if-le v3, v9, :cond_117

    .end local v3    # "height":I
    :goto_5a
    div-int/lit8 v5, v3, 0x2

    .line 96
    .local v5, "longest":I
    new-instance v10, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 97
    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v11, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v10, v11}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 98
    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 99
    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 113
    sget v10, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 114
    .local v8, "tvPageHeader":Landroid/widget/TextView;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v8, v10}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 116
    sget-object v10, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v11, "com.bzbs.platinum"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_af

    .line 117
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "catId"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "paramCatID":Ljava/lang/String;
    sget v10, Lic/buzzebeeslib/R$id;->layoutHeader:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 119
    .local v4, "layoutHeader":Landroid/widget/RelativeLayout;
    invoke-static {v7}, Lic/buzzebeeslib/LibConst;->GET_COLOR_CAT(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 123
    .end local v4    # "layoutHeader":Landroid/widget/RelativeLayout;
    .end local v7    # "paramCatID":Ljava/lang/String;
    :cond_af
    :try_start_af
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "MarketReview"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lic/buzzebeeslib/bean/CampaignReview;

    iput-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_bd} :catch_11a

    .line 128
    :goto_bd
    sget v10, Lic/buzzebeeslib/R$id;->pbLoadingList:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iput-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->pbLoadingList:Landroid/widget/ProgressBar;

    .line 129
    sget v10, Lic/buzzebeeslib/R$id;->listWhoClickLike:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    iput-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->whoClickLikeList:Landroid/widget/ListView;

    .line 130
    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->whoClickLikeList:Landroid/widget/ListView;

    invoke-virtual {v10, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    sget v10, Lic/buzzebeeslib/R$id;->etTextSearch:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->etTextSearch:Landroid/widget/EditText;

    .line 134
    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->etTextSearch:Landroid/widget/EditText;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/EditText;Landroid/content/Context;)V

    .line 136
    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->etTextSearch:Landroid/widget/EditText;

    new-instance v11, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$1;

    invoke-direct {v11, p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->etTextSearch:Landroid/widget/EditText;

    new-instance v11, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$2;

    invoke-direct {v11, p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$2;-><init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 169
    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->etTextSearch:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->showWhoClickLike(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 172
    return-void

    .end local v5    # "longest":I
    .end local v8    # "tvPageHeader":Landroid/widget/TextView;
    .restart local v3    # "height":I
    :cond_117
    move v3, v9

    .line 95
    goto/16 :goto_5a

    .line 124
    .end local v3    # "height":I
    .restart local v5    # "longest":I
    .restart local v8    # "tvPageHeader":Landroid/widget/TextView;
    :catch_11a
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    iput-object v10, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    goto :goto_bd
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 192
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 193
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 194
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 196
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 197
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
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
    .line 177
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 181
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1c

    .line 182
    const-string v1, "content://someURI"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->uri:Landroid/net/Uri;

    .line 183
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->uri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->setResult(ILandroid/content/Intent;)V

    .line 185
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->gActivity:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->finish()V

    .line 187
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1c
    const/4 v1, 0x1

    return v1
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 270
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 272
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 273
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 275
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 261
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 263
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v1}, Lic/buzzebeeslib/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 265
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "402705486466922"

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    return-void
.end method
