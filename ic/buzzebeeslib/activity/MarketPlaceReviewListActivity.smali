.class public Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MarketPlaceReviewListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;,
        Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;,
        Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;,
        Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;,
        Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;,
        Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_review"

.field private static final ITEM_POSITION_KEY:Ljava/lang/String; = "itemPosition"

.field private static final LIST_POSITION_KEY:Ljava/lang/String; = "listPosition"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "listState"


# instance fields
.field private MENU_CANCEL:I

.field private MENU_REVIEW_DELETE:I

.field private MENU_SHOW_LIKE:I

.field private TAG:Ljava/lang/String;

.field private footerListView:Landroid/view/View;

.field private gAdapter:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;

.field private gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gHandler:Landroid/os/Handler;

.field private gImgAnimation:Landroid/view/animation/AnimationSet;

.field private gImgBadge:Landroid/widget/ImageView;

.field private gImgCash1:Landroid/widget/ImageView;

.field private gImgCash2:Landroid/widget/ImageView;

.field private gImgCash3:Landroid/widget/ImageView;

.field private gImgCash4:Landroid/widget/ImageView;

.field private gImgComma1:Landroid/widget/ImageView;

.field private gIsHaveMoreData:Z

.field private gLayoutBadge:Landroid/widget/RelativeLayout;

.field private gLayoutNewbie:Landroid/widget/RelativeLayout;

.field private gLayoutPoints:Landroid/widget/RelativeLayout;

.field private gLayoutRoot:Landroid/widget/LinearLayout;

.field private gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

.field private gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

.field private gLoading:Z

.field private gMarketReviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignReview;",
            ">;"
        }
    .end annotation
.end field

.field private gPbLoadingReview:Landroid/widget/ProgressBar;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gTvBadge:Landroid/widget/TextView;

.field private gTvBadgePoint:Landroid/widget/TextView;

.field private gTvNoReview:Landroid/widget/TextView;

.field private gTvPageHeader:Landroid/widget/TextView;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mItemPosition:I

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;

.field private myZoomInAnimation:Landroid/view/animation/Animation;

.field private myZoomOutAnimation:Landroid/view/animation/Animation;

.field private paramCampaign:Lic/buzzebeeslib/bean/Campaign;

.field private paramCampaignID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 81
    const-class v0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;

    .line 233
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mListState:Landroid/os/Parcelable;

    .line 234
    iput v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mListPosition:I

    .line 235
    iput v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mItemPosition:I

    .line 335
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

    .line 727
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLoading:Z

    .line 883
    const/16 v0, 0xa

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->MENU_SHOW_LIKE:I

    .line 884
    const/16 v0, 0x14

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->MENU_REVIEW_DELETE:I

    .line 885
    const/16 v0, 0x1e

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->MENU_CANCEL:I

    .line 79
    return-void
.end method

.method private PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 10
    .param p1, "pBadgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/badge/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lic/buzzebeeslib/bean/BadgeAlert;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/picture?type=large"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "imgUrl":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgBadge:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->bz_badge_default_512:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 417
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gTvBadge:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lic/buzzebeeslib/bean/BadgeAlert;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gTvBadgePoint:Landroid/widget/TextView;

    iget v2, p1, Lic/buzzebeeslib/bean/BadgeAlert;->points:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 421
    sget v0, Lic/buzzebeeslib/R$anim;->badge_zoom_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->myZoomInAnimation:Landroid/view/animation/Animation;

    .line 422
    sget v0, Lic/buzzebeeslib/R$anim;->badge_zoom_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    .line 424
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->myZoomInAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 485
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$5;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$5;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 509
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 512
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    .line 513
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->myZoomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 514
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 515
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgBadge:Landroid/widget/ImageView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 517
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    .line 518
    .local v6, "slideIn":Landroid/view/animation/Animation;
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 519
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 520
    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 521
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 522
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Lic/buzzebeeslib/bean/Campaign;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V
    .registers 1

    .prologue
    .line 649
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->setLayoutByCatch()V

    return-void
.end method

.method static synthetic access$10(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$11(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$12(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Lic/buzzebeeslib/bean/CampaignReview;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    return-void
.end method

.method static synthetic access$14(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V
    .registers 1

    .prologue
    .line 311
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->playPointsAndBadge()V

    return-void
.end method

.method static synthetic access$16(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gTvNoReview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;

    return-void
.end method

.method static synthetic access$18(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 334
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutPoints:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$19(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutPoints:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gPbLoadingReview:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$20(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 335
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$21(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 336
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgCash1:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$22(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 337
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgCash2:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$23(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 338
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgCash3:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$24(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgCash4:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$25(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 340
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgComma1:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$26(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$27(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/LinearLayout;)V
    .registers 2

    .prologue
    .line 370
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$28(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 371
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgBadge:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$29(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 375
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$30(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 372
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gTvBadge:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$31(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 374
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gTvBadgePoint:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$32(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 373
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$33(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$34(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$35(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 2

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V

    return-void
.end method

.method static synthetic access$36(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$37(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 531
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$38(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Z
    .registers 2

    .prologue
    .line 727
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLoading:Z

    return v0
.end method

.method static synthetic access$39(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gIsHaveMoreData:Z

    return v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$40(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$41(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Z)V
    .registers 2

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->loadMarketReview(Z)V

    return-void
.end method

.method static synthetic access$42(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lic/buzzebeeslib/bean/Campaign;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-object v0
.end method

.method static synthetic access$43(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lic/buzzebeeslib/bean/CampaignReview;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    return-object v0
.end method

.method static synthetic access$44(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$45(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 3

    .prologue
    .line 1252
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->actionLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    return-void
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Z)V
    .registers 2

    .prologue
    .line 101
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gIsHaveMoreData:Z

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Z)V
    .registers 2

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->setLayoutByReview(Z)V

    return-void
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Z)V
    .registers 2

    .prologue
    .line 727
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLoading:Z

    return-void
.end method

.method static synthetic access$9(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private actionLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 9
    .param p1, "isLike"    # Z
    .param p2, "tagLike"    # Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1253
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->layoutLike:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1254
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->pbImgLike:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1255
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1256
    if-eqz p1, :cond_5a

    .line 1257
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon_like_a:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1262
    :goto_1f
    if-eqz p1, :cond_66

    .line 1263
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/like?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    invoke-static {v0, v4, v1, v4}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 1269
    :goto_59
    return-void

    .line 1259
    .end local v0    # "url":Ljava/lang/String;
    :cond_5a
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon_like_b:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_1f

    .line 1266
    :cond_66
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/like?method=delete&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1267
    .restart local v0    # "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;

    invoke-direct {v1, p0, v5, p2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    invoke-static {v0, v4, v1, v4}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_59
.end method

.method private checkLogin()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 825
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 826
    .local v2, "tokenBzBs":Ljava/lang/String;
    if-eqz v2, :cond_15

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 827
    const/4 v3, 0x1

    .line 839
    :goto_14
    return v3

    .line 829
    :cond_15
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 830
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v4, Lic/buzzebeeslib/R$string;->dialog_login_header:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 831
    sget v4, Lic/buzzebeeslib/R$string;->dialog_login_message:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$9;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$9;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 836
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 837
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_14
.end method

.method private getCampaign(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gPbLoadingReview:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 551
    return-void
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 525
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 526
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 527
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 528
    return-object v0
.end method

.method private initialLayout()V
    .registers 7

    .prologue
    .line 584
    sget v3, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gTvPageHeader:Landroid/widget/TextView;

    .line 585
    sget v3, Lic/buzzebeeslib/R$idMarketReviewList;->textView1:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 587
    .local v2, "textView1":Landroid/widget/TextView;
    sget v3, Lic/buzzebeeslib/R$idMarketReviewList;->pbLoadingReview:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gPbLoadingReview:Landroid/widget/ProgressBar;

    .line 588
    sget v3, Lic/buzzebeeslib/R$idMarketReviewList;->listMarketReview:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/control/PullToRefreshListView;

    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    .line 592
    :try_start_26
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/DSNSKW_.TTF"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 593
    .local v1, "font_header":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/kit55p.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 594
    .local v0, "font":Landroid/graphics/Typeface;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gTvPageHeader:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 595
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_42} :catch_6e

    .line 601
    .end local v0    # "font":Landroid/graphics/Typeface;
    .end local v1    # "font_header":Landroid/graphics/Typeface;
    :goto_42
    sget v3, Lic/buzzebeeslib/R$idMarketReviewList;->tvNoReview:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gTvNoReview:Landroid/widget/TextView;

    .line 602
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$layout;->bz_list_footer:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->footerListView:Landroid/view/View;

    .line 605
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v4, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$6;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$6;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnRefreshListener(Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;)V

    .line 611
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v4, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 647
    return-void

    .line 596
    :catch_6e
    move-exception v3

    goto :goto_42
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 541
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 542
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-nez v0, :cond_20

    .line 543
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "campaignID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->paramCampaignID:Ljava/lang/String;

    .line 545
    :cond_20
    return-void
.end method

.method private loadMarketReview(Z)V
    .registers 6
    .param p1, "pLoadMore"    # Z

    .prologue
    .line 730
    iget-boolean v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLoading:Z

    if-eqz v1, :cond_c

    .line 731
    const-string v1, "buzzebees.MarketReview"

    const-string v2, "loadMarketReview --> can not load, because the current loading is not finish..."

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_b
    return-void

    .line 733
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLoading:Z

    .line 735
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$8;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$8;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/buzz?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_7f

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7f

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&lastRowKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v1, v1, Lic/buzzebeeslib/bean/CampaignReview;->RowKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    :cond_7f
    const-string v1, "buzzebees.MarketReview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadMarketReview --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Z)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_b
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 532
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 533
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 534
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 535
    return-object v0
.end method

.method private playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 3
    .param p1, "badgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    .line 381
    sget-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    if-nez v0, :cond_f

    .line 382
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    .line 383
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 410
    :cond_f
    return-void
.end method

.method private playPoint(I)V
    .registers 3
    .param p1, "points"    # I

    .prologue
    .line 343
    sget-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    if-nez v0, :cond_f

    .line 344
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    .line 345
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;I)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 366
    :cond_f
    return-void
.end method

.method private playPointsAndBadge()V
    .registers 3

    .prologue
    .line 323
    :try_start_0
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 324
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/BadgeAlert;

    .line 325
    .local v0, "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 331
    .end local v0    # "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    :cond_13
    :goto_13
    return-void

    .line 328
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 282
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 284
    const-string v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->setLayoutByReview(Z)V

    .line 290
    :try_start_1d
    const-string v0, "listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mListState:Landroid/os/Parcelable;

    .line 291
    const-string v0, "listPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mListPosition:I

    .line 292
    const-string v0, "itemPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mItemPosition:I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_35} :catch_36

    .line 299
    :cond_35
    :goto_35
    return-void

    .line 293
    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method private setLayoutByCatch()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 650
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MarketReview_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "catch_MarketReview":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_79

    .line 654
    :try_start_24
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 655
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_5f

    move-result v6

    if-lt v3, v6, :cond_34

    .line 675
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_30
    invoke-direct {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->loadMarketReview(Z)V

    .line 679
    :goto_33
    return-void

    .line 657
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_34
    :try_start_34
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 659
    .local v5, "json_market_review":Lorg/json/JSONObject;
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;

    new-instance v7, Lic/buzzebeeslib/bean/CampaignReview;

    invoke-direct {v7, v5}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_42} :catch_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_42} :catch_5f

    .line 655
    .end local v5    # "json_market_review":Lorg/json/JSONObject;
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 661
    :catch_45
    move-exception v1

    .line 662
    .local v1, "e":Lorg/json/JSONException;
    :try_start_46
    const-string v6, "buzzebees.MarketReview"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(GetMarketReviewRequestListener|onComplete|for|JSONException):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5e} :catch_5f

    goto :goto_42

    .line 665
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_5f
    move-exception v2

    .line 667
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "buzzebees.MarketReview"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(initialLayoutByCatch|step1):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 677
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_79
    invoke-direct {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->loadMarketReview(Z)V

    goto :goto_33
.end method

.method private setLayoutByReview(Z)V
    .registers 7
    .param p1, "pLoadMore"    # Z

    .prologue
    const/4 v4, 0x0

    .line 683
    if-eqz p1, :cond_10

    .line 684
    :try_start_3
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->notifyDataSetChanged()V

    .line 720
    :goto_8
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->footerListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 725
    :goto_f
    return-void

    .line 686
    :cond_10
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;

    .line 687
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_53

    .line 700
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gTvNoReview:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_33} :catch_34

    goto :goto_8

    .line 721
    :catch_34
    move-exception v0

    .line 722
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "buzzebees.MarketReview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error While Load Market Review...:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1, v4}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_f

    .line 704
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_53
    :try_start_53
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gTvNoReview:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5f} :catch_34

    goto :goto_8
.end method


# virtual methods
.method public doLike(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 859
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .line 860
    .local v1, "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->doLike(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 864
    .end local v1    # "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    :goto_9
    return-void

    .line 861
    :catch_a
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "buzzebees.MarketReview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|doLike):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public doLike(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 6
    .param p1, "tagLike"    # Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .prologue
    .line 1240
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gTvPageHeader:Landroid/widget/TextView;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$12;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$12;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    .line 1249
    const-wide/16 v2, 0x64

    .line 1240
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1250
    return-void
.end method

.method public doPostMarketReview(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 844
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->checkLogin()Z

    move-result v1

    if-nez v1, :cond_7

    .line 855
    :goto_6
    return-void

    .line 848
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/CampaignPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 849
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PAGE_MODE"

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 850
    const-string v1, "campaign"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 851
    const-string v1, "uid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const-string v1, "type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public doRefresh(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 821
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->loadMarketReview(Z)V

    .line 822
    return-void
.end method

.method public doSeeMore(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 872
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 874
    .local v1, "position":I
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/CampaignReview;

    .line 876
    .local v2, "review":Lic/buzzebeeslib/bean/CampaignReview;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    .line 877
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->notifyDataSetChanged()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 881
    .end local v1    # "position":I
    .end local v2    # "review":Lic/buzzebeeslib/bean/CampaignReview;
    :goto_1a
    return-void

    .line 878
    :catch_1b
    move-exception v0

    .line 879
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "buzzebees.MarketReview"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|doSeeMore):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    .line 908
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 909
    .local v4, "name":Ljava/lang/String;
    sget v5, Lic/buzzebeeslib/R$string;->menu_popup_delete:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 910
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    if-eqz v5, :cond_62

    .line 911
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 912
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v5, Lic/buzzebeeslib/R$string;->menu_popup_delete_confirm:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 913
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Yes"

    new-instance v7, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$10;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$10;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 922
    const-string v6, "No"

    new-instance v7, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$11;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$11;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 927
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 928
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 938
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "message":Ljava/lang/String;
    :cond_62
    :goto_62
    const/4 v5, 0x1

    return v5

    .line 930
    :cond_64
    sget v5, Lic/buzzebeeslib/R$string;->menu_popup_like:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 931
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    if-eqz v5, :cond_62

    .line 932
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 933
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "MarketReview"

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 934
    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_62
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    if-eqz p1, :cond_94

    .line 114
    const-string v6, "buzzebees.MarketReview"

    const-string v7, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_c
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->requestWindowFeature(I)Z

    .line 119
    invoke-static {p0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 120
    sget v6, Lic/buzzebeeslib/R$layout;->bz_market_review_list:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->setContentView(I)V

    .line 122
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gHandler:Landroid/os/Handler;

    .line 124
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 125
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 127
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "cache_review"

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 129
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 131
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gScreenHeight:I

    .line 132
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gScreenWidth:I

    .line 134
    iget v5, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gScreenWidth:I

    .line 135
    .local v5, "width":I
    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gScreenHeight:I

    .line 137
    .local v2, "height":I
    if-le v2, v5, :cond_9d

    .end local v2    # "height":I
    :goto_61
    div-int/lit8 v3, v2, 0x2

    .line 138
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 139
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 140
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 141
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 144
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->initialParam()V

    .line 145
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->initialLayout()V

    .line 147
    if-nez p1, :cond_a5

    .line 148
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v6, :cond_9f

    .line 149
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->setLayoutByCatch()V

    .line 157
    :goto_93
    return-void

    .line 116
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "longest":I
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "width":I
    :cond_94
    const-string v6, "buzzebees.MarketReview"

    const-string v7, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "width":I
    :cond_9d
    move v2, v5

    .line 137
    goto :goto_61

    .line 151
    .end local v2    # "height":I
    .restart local v3    # "longest":I
    :cond_9f
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->paramCampaignID:Ljava/lang/String;

    invoke-direct {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getCampaign(Ljava/lang/String;)V

    goto :goto_93

    .line 154
    :cond_a5
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_93
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .param p1, "cm"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "cminf"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x1

    .line 889
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 890
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    if-eqz v1, :cond_54

    .line 891
    sget v1, Lic/buzzebeeslib/R$string;->menu_popup_header:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 892
    sget-object v1, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v2, "com.ptt.BlueCard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 893
    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->MENU_SHOW_LIKE:I

    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->MENU_SHOW_LIKE:I

    sget v3, Lic/buzzebeeslib/R$string;->menu_popup_like:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 897
    :cond_28
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/LibUserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "UserId":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v1, v1, Lic/buzzebeeslib/bean/CampaignReview;->UserId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 899
    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->MENU_REVIEW_DELETE:I

    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->MENU_REVIEW_DELETE:I

    sget v3, Lic/buzzebeeslib/R$string;->menu_popup_delete:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 902
    :cond_47
    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->MENU_CANCEL:I

    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->MENU_CANCEL:I

    sget v3, Lic/buzzebeeslib/R$string;->menu_popup_cancel:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 904
    .end local v0    # "UserId":Ljava/lang/String;
    :cond_54
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 219
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 220
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 224
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 226
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 227
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 197
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 198
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 201
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 202
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->clearPostListener()V

    .line 203
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 213
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 214
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 276
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 168
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onResume() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0, v3}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 172
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)V

    invoke-static {v0}, Lic/buzzebeeslib/util/async/PostEvents;->addPostListener(Lic/buzzebeeslib/util/async/PostEvents$PostListener;)V

    .line 179
    :try_start_19
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_24

    .line 180
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 181
    :cond_24
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mListPosition:I

    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mItemPosition:I

    invoke-virtual {v0, v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->setSelectionFromTop(II)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_3a

    .line 187
    :goto_2d
    :try_start_2d
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->playPointsAndBadge()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_38

    .line 192
    :goto_30
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v3}, Lic/buzzebeeslib/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 193
    return-void

    .line 188
    :catch_38
    move-exception v0

    goto :goto_30

    .line 182
    :catch_3a
    move-exception v0

    goto :goto_2d
.end method

.method protected onResumeFragments()V
    .registers 1

    .prologue
    .line 270
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 271
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 240
    const-string v2, "buzzebees.MarketReview"

    const-string v3, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    const-string v2, "paramCampaign"

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 252
    :try_start_18
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mListState:Landroid/os/Parcelable;

    .line 253
    const-string v2, "listState"

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mListPosition:I

    .line 257
    const-string v2, "listPosition"

    iget v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mListPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 261
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_49

    :goto_3f
    iput v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mItemPosition:I

    .line 262
    const-string v1, "itemPosition"

    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->mItemPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    .end local v0    # "itemView":Landroid/view/View;
    :goto_48
    return-void

    .line 261
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_49
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4c} :catch_4e

    move-result v1

    goto :goto_3f

    .line 263
    .end local v0    # "itemView":Landroid/view/View;
    :catch_4e
    move-exception v1

    goto :goto_48
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 162
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 207
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 208
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$1;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    return-void
.end method
