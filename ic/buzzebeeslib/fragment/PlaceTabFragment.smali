.class public Lic/buzzebeeslib/fragment/PlaceTabFragment;
.super Landroid/support/v4/app/Fragment;
.source "PlaceTabFragment.java"


# static fields
.field public static final BRANCH_LIST_STATE:I = 0x5

.field public static final DEALS_LIST_STATE:I = 0x3

.field public static final NEAR_BY_LIST_STATE:I = 0x1

.field public static final PLACES_LIST_STATE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static final TOP_REVIEWS_LIST_STATE:I = 0x4


# instance fields
.field private final LOGCATLC:Ljava/lang/String;

.field private etTextSearch:Landroid/widget/EditText;

.field private gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

.field private gParamPAGE_MODE:I

.field private gTabState:I

.field private imgDeals:Landroid/widget/ImageView;

.field private imgDeleteTextSearch:Landroid/widget/ImageView;

.field private imgNearBy:Landroid/widget/ImageView;

.field private imgPlaces:Landroid/widget/ImageView;

.field private imgTopReviews:Landroid/widget/ImageView;

.field private mLeak:Landroid/view/View;

.field private tabDeals1:Landroid/widget/RelativeLayout;

.field private tabNearBy1:Landroid/widget/RelativeLayout;

.field private tabPlaces1:Landroid/widget/RelativeLayout;

.field private tabTopReviews1:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lic/buzzebeeslib/fragment/PlaceTabFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(ILic/buzzebeeslib/bean/Campaign;)V
    .registers 4
    .param p1, "pParamPAGE_MODE"    # I
    .param p2, "pParamCampaign"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 34
    const-string v0, "buzzebees.places.fragment.lc"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->LOGCATLC:Ljava/lang/String;

    .line 83
    iput p1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamPAGE_MODE:I

    .line 84
    iput-object p2, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 85
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V
    .registers 1

    .prologue
    .line 428
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->replaceListFragment()V

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/fragment/PlaceTabFragment;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->etTextSearch:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V
    .registers 1

    .prologue
    .line 375
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gotoNearByListView()V

    return-void
.end method

.method static synthetic access$4(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V
    .registers 1

    .prologue
    .line 388
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gotoPlacesListView()V

    return-void
.end method

.method static synthetic access$5(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V
    .registers 1

    .prologue
    .line 401
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gotoDealsListView()V

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V
    .registers 1

    .prologue
    .line 414
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gotoTopReviewsListView()V

    return-void
.end method

.method private gotoBranchListView()V
    .registers 3

    .prologue
    const/4 v1, 0x5

    .line 367
    iget v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gTabState:I

    if-eq v0, v1, :cond_10

    .line 368
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->resetTab()V

    .line 369
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->hideTab()V

    .line 370
    iput v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gTabState:I

    .line 371
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->replaceListFragment()V

    .line 373
    :cond_10
    return-void
.end method

.method private gotoDealsListView()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 402
    iget v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gTabState:I

    if-eq v0, v3, :cond_22

    .line 403
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->resetTab()V

    .line 405
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 406
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgDeals:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 409
    :cond_1d
    iput v3, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gTabState:I

    .line 410
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->replaceListFragment()V

    .line 412
    :cond_22
    return-void
.end method

.method private gotoDealsListView(ILic/buzzebeeslib/bean/Campaign;)V
    .registers 3
    .param p1, "pParamPAGE_MODE"    # I
    .param p2, "pParamCampaign"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    .line 361
    iput p1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamPAGE_MODE:I

    .line 362
    iput-object p2, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 363
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gotoBranchListView()V

    .line 364
    return-void
.end method

.method private gotoNearByListView()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 376
    iget v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gTabState:I

    if-eq v0, v3, :cond_22

    .line 377
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->resetTab()V

    .line 379
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 380
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgNearBy:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 383
    :cond_1d
    iput v3, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gTabState:I

    .line 384
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->replaceListFragment()V

    .line 386
    :cond_22
    return-void
.end method

.method private gotoPlacesListView()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 389
    iget v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gTabState:I

    if-eq v0, v3, :cond_22

    .line 390
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->resetTab()V

    .line 392
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 393
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgPlaces:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 396
    :cond_1d
    iput v3, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gTabState:I

    .line 397
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->replaceListFragment()V

    .line 399
    :cond_22
    return-void
.end method

.method private gotoPlacesListView(ILic/buzzebeeslib/bean/Campaign;)V
    .registers 3
    .param p1, "pParamPAGE_MODE"    # I
    .param p2, "pParamCampaign"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    .line 355
    iput p1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamPAGE_MODE:I

    .line 356
    iput-object p2, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 357
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gotoPlacesListView()V

    .line 358
    return-void
.end method

.method private gotoTopReviewsListView()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 415
    iget v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gTabState:I

    if-eq v0, v3, :cond_29

    .line 416
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->resetTab()V

    .line 418
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 419
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgTopReviews:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 422
    :cond_1d
    iput v3, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gTabState:I

    .line 423
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->replaceListFragment()V

    .line 424
    sget-object v0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->TAG:Ljava/lang/String;

    const-string v1, "gotoAllListView"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_29
    return-void
.end method

.method private hideTab()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 438
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabNearBy1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabPlaces1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabDeals1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabTopReviews1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 442
    return-void
.end method

.method private replaceListFragment()V
    .registers 9

    .prologue
    .line 429
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 430
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    if-eqz v0, :cond_27

    .line 431
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 432
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v2, Lic/buzzebeeslib/R$idPlaces3Fragment;->fragment_content:I

    new-instance v3, Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gTabState:I

    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->etTextSearch:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamPAGE_MODE:I

    iget-object v7, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v3, v4, v5, v6, v7}, Lic/buzzebeeslib/fragment/PlaceListFragment;-><init>(ILjava/lang/String;ILic/buzzebeeslib/bean/Campaign;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 433
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 435
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_27
    return-void
.end method

.method private resetTab()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 445
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabNearBy1:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 446
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabPlaces1:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 447
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabDeals1:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 448
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabTopReviews1:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 450
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->hideTab()V

    .line 452
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 453
    .local v1, "bm_place_near_by_2":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 454
    .local v2, "bm_place_place_2":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 455
    .local v0, "bm_place_deals_2":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 457
    .local v3, "bm_place_top_review_2":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgNearBy:Landroid/widget/ImageView;

    if-eqz v4, :cond_4a

    .line 458
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgNearBy:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 460
    :cond_4a
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgPlaces:Landroid/widget/ImageView;

    if-eqz v4, :cond_53

    .line 461
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgPlaces:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 463
    :cond_53
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgDeals:Landroid/widget/ImageView;

    if-eqz v4, :cond_5c

    .line 464
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgDeals:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 466
    :cond_5c
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgTopReviews:Landroid/widget/ImageView;

    if-eqz v4, :cond_65

    .line 467
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgTopReviews:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 469
    :cond_65
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgNearBy:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 470
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgPlaces:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 471
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgDeals:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 472
    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgTopReviews:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 474
    if-eqz v1, :cond_85

    .line 475
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 476
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 478
    :cond_84
    const/4 v1, 0x0

    .line 480
    :cond_85
    if-eqz v2, :cond_91

    .line 481
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 482
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 484
    :cond_90
    const/4 v2, 0x0

    .line 486
    :cond_91
    if-eqz v0, :cond_9d

    .line 487
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 488
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 490
    :cond_9c
    const/4 v0, 0x0

    .line 492
    :cond_9d
    if-eqz v3, :cond_a9

    .line 493
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 494
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 496
    :cond_a8
    const/4 v3, 0x0

    .line 498
    :cond_a9
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 349
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 352
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 236
    iget v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamPAGE_MODE:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_11

    .line 237
    iget v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamPAGE_MODE:I

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {p0, v0, v1}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gotoDealsListView(ILic/buzzebeeslib/bean/Campaign;)V

    .line 241
    :goto_10
    return-void

    .line 239
    :cond_11
    iget v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamPAGE_MODE:I

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {p0, v0, v1}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gotoPlacesListView(ILic/buzzebeeslib/bean/Campaign;)V

    goto :goto_10
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 98
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->setRetainInstance(Z)V

    .line 114
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 116
    if-eqz p1, :cond_18

    .line 117
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 119
    :cond_18
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    sget v1, Lic/buzzebeeslib/R$layout;->bz_place_fragment_tab:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->mLeak:Landroid/view/View;

    .line 134
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->mLeak:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$idPlaces3FragmentTab;->etTextSearch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->etTextSearch:Landroid/widget/EditText;

    .line 136
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->mLeak:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$idPlaces3FragmentTab;->imgDeleteTextSearch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgDeleteTextSearch:Landroid/widget/ImageView;

    .line 138
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->mLeak:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$idPlaces3FragmentTab;->tabNearBy1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabNearBy1:Landroid/widget/RelativeLayout;

    .line 139
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->mLeak:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$idPlaces3FragmentTab;->tabPlaces1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabPlaces1:Landroid/widget/RelativeLayout;

    .line 140
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->mLeak:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$idPlaces3FragmentTab;->tabDeals1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabDeals1:Landroid/widget/RelativeLayout;

    .line 141
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->mLeak:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$idPlaces3FragmentTab;->tabTopReviews1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabTopReviews1:Landroid/widget/RelativeLayout;

    .line 143
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->mLeak:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$idPlaces3FragmentTab;->imgNearBy:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgNearBy:Landroid/widget/ImageView;

    .line 144
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->mLeak:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$idPlaces3FragmentTab;->imgPlaces:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgPlaces:Landroid/widget/ImageView;

    .line 145
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->mLeak:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$idPlaces3FragmentTab;->imgDeals:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgDeals:Landroid/widget/ImageView;

    .line 146
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->mLeak:Landroid/view/View;

    sget v2, Lic/buzzebeeslib/R$idPlaces3FragmentTab;->imgTopReviews:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgTopReviews:Landroid/widget/ImageView;

    .line 150
    :try_start_81
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/kit55p.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 152
    .local v0, "font":Landroid/graphics/Typeface;
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->etTextSearch:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_94} :catch_d3

    .line 158
    .end local v0    # "font":Landroid/graphics/Typeface;
    :goto_94
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->etTextSearch:Landroid/widget/EditText;

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceTabFragment$1;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment$1;-><init>(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 176
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgDeleteTextSearch:Landroid/widget/ImageView;

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceTabFragment$2;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment$2;-><init>(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgNearBy:Landroid/widget/ImageView;

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceTabFragment$3;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment$3;-><init>(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgPlaces:Landroid/widget/ImageView;

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceTabFragment$4;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment$4;-><init>(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgDeals:Landroid/widget/ImageView;

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceTabFragment$5;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment$5;-><init>(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgTopReviews:Landroid/widget/ImageView;

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceTabFragment$6;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment$6;-><init>(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->mLeak:Landroid/view/View;

    return-object v1

    .line 153
    :catch_d3
    move-exception v1

    goto :goto_94
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 290
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 295
    iput v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gTabState:I

    .line 297
    iput v1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamPAGE_MODE:I

    .line 298
    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 300
    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->etTextSearch:Landroid/widget/EditText;

    .line 301
    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgDeleteTextSearch:Landroid/widget/ImageView;

    .line 303
    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabNearBy1:Landroid/widget/RelativeLayout;

    .line 304
    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabPlaces1:Landroid/widget/RelativeLayout;

    .line 305
    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabDeals1:Landroid/widget/RelativeLayout;

    .line 306
    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->tabTopReviews1:Landroid/widget/RelativeLayout;

    .line 308
    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgNearBy:Landroid/widget/ImageView;

    .line 309
    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgPlaces:Landroid/widget/ImageView;

    .line 310
    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgDeals:Landroid/widget/ImageView;

    .line 311
    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->imgTopReviews:Landroid/widget/ImageView;

    .line 313
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 278
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 282
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 283
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/support/v4/app/Fragment;I)V

    .line 285
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment;->mLeak:Landroid/view/View;

    .line 286
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 317
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 321
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 261
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 265
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->clearPostListener()V

    .line 266
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 253
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 257
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 337
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 245
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 249
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 270
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 274
    return-void
.end method
