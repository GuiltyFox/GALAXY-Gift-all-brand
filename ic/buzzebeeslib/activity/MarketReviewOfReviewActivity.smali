.class public Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MarketReviewOfReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener;,
        Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;,
        Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;,
        Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;,
        Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;,
        Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;,
        Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$ProcessActionLikeListener;
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

.field private cd:Lic/buzzebeeslib/util/ConnectionDetector;

.field private footerListView:Landroid/view/View;

.field private gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

.field private gBtnPostComment:Landroid/widget/Button;

.field private gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gENUM_PAGE_MODE_MARKETPLACE_REVIEW:I

.field private gFontDefault:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gImgAnimation:Landroid/view/animation/AnimationSet;

.field private gImgBadge:Landroid/widget/ImageView;

.field private gIsChanged:Z

.field private gIsHaveMoreData:Z

.field private gIsLoadFromPost:Z

.field private gIvLoadingPrevious:Landroid/widget/ImageView;

.field private gLayoutBadge:Landroid/widget/RelativeLayout;

.field private gLayoutNewbie:Landroid/widget/RelativeLayout;

.field private gLayoutRoot:Landroid/widget/LinearLayout;

.field private gLayoutRootPrevious:Landroid/widget/RelativeLayout;

.field private gListMarketReview:Landroid/widget/ListView;

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

.field private gPbLoadingPrevious:Landroid/widget/ProgressBar;

.field private gPbLoadingReview:Landroid/widget/ProgressBar;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gTvBadge:Landroid/widget/TextView;

.field private gTvBadgePoint:Landroid/widget/TextView;

.field private gTvCommentCount:Landroid/widget/TextView;

.field private gTvPageHeader:Landroid/widget/TextView;

.field private gTvPreviousReview:Landroid/widget/TextView;

.field private gTxtPostComment:Landroid/widget/TextView;

.field private header_no_review_ListView:Landroid/view/View;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mItemPosition:I

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;

.field private myZoomInAnimation:Landroid/view/animation/Animation;

.field private myZoomOutAnimation:Landroid/view/animation/Animation;

.field private paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 84
    const-class v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    .line 120
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gIsLoadFromPost:Z

    .line 121
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gIsChanged:Z

    .line 133
    iput v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gENUM_PAGE_MODE_MARKETPLACE_REVIEW:I

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    .line 344
    iput v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListPosition:I

    .line 345
    iput v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mItemPosition:I

    .line 1215
    const/16 v0, 0xa

    iput v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->MENU_SHOW_LIKE:I

    .line 1216
    const/16 v0, 0x14

    iput v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->MENU_REVIEW_DELETE:I

    .line 1217
    const/16 v0, 0x1e

    iput v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->MENU_CANCEL:I

    .line 1343
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLoading:Z

    .line 82
    return-void
.end method

.method private PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 10
    .param p1, "pBadgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    .line 2009
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

    .line 2010
    .local v1, "imgUrl":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gImgBadge:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->bz_badge_default_512:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2012
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvBadge:Landroid/widget/TextView;

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

    .line 2013
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvBadgePoint:Landroid/widget/TextView;

    iget v2, p1, Lic/buzzebeeslib/bean/BadgeAlert;->points:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2014
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2016
    sget v0, Lic/buzzebeeslib/R$anim;->badge_zoom_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->myZoomInAnimation:Landroid/view/animation/Animation;

    .line 2017
    sget v0, Lic/buzzebeeslib/R$anim;->badge_zoom_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    .line 2019
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->myZoomInAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2080
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$13;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$13;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2104
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2105
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2107
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    .line 2108
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->myZoomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2109
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2110
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gImgBadge:Landroid/widget/ImageView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2112
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    .line 2113
    .local v6, "slideIn":Landroid/view/animation/Animation;
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2114
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2115
    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2116
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2117
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V
    .registers 1

    .prologue
    .line 1942
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->playPointsAndBadge()V

    return-void
.end method

.method static synthetic access$11(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$12(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/bean/CampaignReview;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    return-void
.end method

.method static synthetic access$13(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V
    .registers 1

    .prologue
    .line 430
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->initialLayout()V

    return-void
.end method

.method static synthetic access$14(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V
    .registers 2

    .prologue
    .line 1345
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->loadReviewOfReview(Z)V

    return-void
.end method

.method static synthetic access$15(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$16(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V
    .registers 2

    .prologue
    .line 114
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gIsHaveMoreData:Z

    return-void
.end method

.method static synthetic access$17(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)I
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListPosition:I

    return v0
.end method

.method static synthetic access$18(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;I)V
    .registers 2

    .prologue
    .line 344
    iput p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListPosition:I

    return-void
.end method

.method static synthetic access$19(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V
    .registers 2

    .prologue
    .line 1114
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->setLayoutByReview(Z)V

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    return-object v0
.end method

.method static synthetic access$20(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gIvLoadingPrevious:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$21(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gPbLoadingReview:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$22(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gPbLoadingPrevious:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$23(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$24(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutRootPrevious:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$25(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gIsHaveMoreData:Z

    return v0
.end method

.method static synthetic access$26(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$27(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$28(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)I
    .registers 2

    .prologue
    .line 345
    iget v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mItemPosition:I

    return v0
.end method

.method static synthetic access$29(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V
    .registers 2

    .prologue
    .line 1343
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLoading:Z

    return-void
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$30(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$31(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/bean/CampaignReview;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    return-void
.end method

.method static synthetic access$32(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    return-void
.end method

.method static synthetic access$33(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 343
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    return-void
.end method

.method static synthetic access$34(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;I)V
    .registers 2

    .prologue
    .line 345
    iput p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mItemPosition:I

    return-void
.end method

.method static synthetic access$35(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 807
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->doViewPhotoSmart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$36(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 3

    .prologue
    .line 950
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->actionLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    return-void
.end method

.method static synthetic access$37(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lic/buzzebeeslib/bean/CampaignReview;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    return-object v0
.end method

.method static synthetic access$38(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$39(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 1966
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gImgBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lic/buzzebeeslib/bean/CampaignReview;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    return-object v0
.end method

.method static synthetic access$40(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/widget/LinearLayout;)V
    .registers 2

    .prologue
    .line 1965
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$41(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 1966
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gImgBadge:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$42(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 1970
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$43(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 1967
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvBadge:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$44(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 1969
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvBadgePoint:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$45(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 1968
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$46(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 1968
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$47(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 1965
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$48(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 2

    .prologue
    .line 2008
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V

    return-void
.end method

.method static synthetic access$49(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 1972
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvCommentCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$50(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 2126
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V
    .registers 2

    .prologue
    .line 121
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gIsChanged:Z

    return-void
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTxtPostComment:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gBtnPostComment:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private actionLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 9
    .param p1, "isLike"    # Z
    .param p2, "tagLike"    # Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 951
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->layoutLike:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 952
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->pbImgLike:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 953
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 954
    if-eqz p1, :cond_5a

    .line 955
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_detail_liked:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 960
    :goto_1f
    if-eqz p1, :cond_66

    .line 961
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

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$ProcessActionLikeListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$ProcessActionLikeListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    invoke-static {v0, v4, v1, v4}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 967
    :goto_59
    return-void

    .line 957
    .end local v0    # "url":Ljava/lang/String;
    :cond_5a
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_detail_like:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_1f

    .line 964
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

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 965
    .restart local v0    # "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$ProcessActionLikeListener;

    invoke-direct {v1, p0, v5, p2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$ProcessActionLikeListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    invoke-static {v0, v4, v1, v4}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_59
.end method

.method private addHeaderAndFooter()V
    .registers 37

    .prologue
    .line 489
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$layout;->bz_market_review2_row:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 493
    .local v12, "headerView":Landroid/view/View;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgProfile:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 494
    .local v4, "imgProfile":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvDisplayName:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 495
    .local v32, "tvDisplayName":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutPhoto:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 497
    .local v21, "layoutPhoto":Landroid/widget/RelativeLayout;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgPhotoSmart:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 498
    .local v16, "imgPhotoSmart":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->ratingBarPhoto:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RatingBar;

    .line 499
    .local v26, "ratingBarPhoto":Landroid/widget/RatingBar;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvLocationNamePhoto:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 501
    .local v34, "tvLocationNamePhoto":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvCreateTimePhoto:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 502
    .local v31, "tvCreateTimePhoto":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->ratingBarStatus:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/RatingBar;

    .line 503
    .local v27, "ratingBarStatus":Landroid/widget/RatingBar;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutCreateTime:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 505
    .local v19, "layoutCreateTime":Landroid/widget/RelativeLayout;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvCreateTime:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 507
    .local v30, "tvCreateTime":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvStatus:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 508
    .local v35, "tvStatus":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutSeeMore:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lic/buzzebeeslib/control/RelativeLayoutButton;

    .line 511
    .local v23, "layoutSeeMore":Lic/buzzebeeslib/control/RelativeLayoutButton;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->layoutLike:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 512
    .local v20, "layoutLike":Landroid/widget/RelativeLayout;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->pbImgLike:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ProgressBar;

    .line 513
    .local v24, "pbImgLike":Landroid/widget/ProgressBar;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgLike:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 514
    .local v15, "imgLike":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvLike:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 515
    .local v33, "tvLike":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->progressBarLoadingIcon:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ProgressBar;

    .line 516
    .local v25, "progressBarLoadingIcon":Landroid/widget/ProgressBar;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->imgCommentIcon:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 518
    .local v14, "imgCommentIcon":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewRow;->tvCommentCount:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvCommentCount:Landroid/widget/TextView;

    .line 528
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 530
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 531
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 533
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvCommentCount:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 536
    const/16 v17, 0x0

    .line 537
    .local v17, "isPhotoLayout":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fa

    .line 538
    const/16 v17, 0x1

    .line 541
    :cond_fa
    if-eqz v17, :cond_37e

    .line 543
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 544
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 545
    const/16 v2, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 546
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 555
    :goto_116
    const/16 v2, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 556
    const/16 v2, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 558
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_39a

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    invoke-virtual {v3}, Lic/buzzebeeslib/bean/CampaignReview;->GetProfileImage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->bz_image_profile_fb_m:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 569
    :goto_141
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->Name:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    if-eqz v17, :cond_3af

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->PlaceName:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v6, v2, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    const/4 v8, 0x0

    sget v9, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v10, 0x0

    move-object/from16 v7, v16

    invoke-virtual/range {v5 .. v10}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 576
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    if-eqz v2, :cond_1a4

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a4

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1a4

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 583
    :cond_1a4
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v0, v2, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 584
    .local v28, "strImageUrl":Ljava/lang/String;
    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v2, v0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$3;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    .end local v28    # "strImageUrl":Ljava/lang/String;
    :cond_1ba
    :goto_1ba
    if-eqz v17, :cond_3ef

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-wide v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->CreatedTime:J

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lic/buzzebeeslib/util/BBUtil;->CDateToTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    :goto_1cf
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42c

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v3, v2, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_404

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v3, v2, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    .line 617
    :goto_20a
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-boolean v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    if-eqz v2, :cond_419

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    const/4 v2, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setVisibility(I)V

    .line 624
    :goto_223
    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    :goto_229
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvCommentCount:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget v3, v3, Lic/buzzebeeslib/bean/CampaignReview;->CommentCount:I

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-boolean v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    if-nez v2, :cond_452

    .line 641
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 643
    sget v2, Lic/buzzebeeslib/R$drawable;->bz_detail_like:I

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v15, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 650
    :goto_260
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->Sticker:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1, v14}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)Z

    move-result v18

    .line 652
    .local v18, "isShowIcon":Z
    new-instance v29, Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    invoke-direct/range {v29 .. v29}, Lic/buzzebeeslib/bean/TagLikeCampaignReview;-><init>()V

    .line 653
    .local v29, "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    move-object/from16 v0, v29

    iput-object v2, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    .line 654
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    iput-object v0, v1, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->layoutLike:Landroid/widget/RelativeLayout;

    .line 655
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    iput-object v0, v1, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->pbImgLike:Landroid/widget/ProgressBar;

    .line 656
    move-object/from16 v0, v29

    iput-object v15, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    .line 657
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    iput-object v0, v1, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->tvLike:Landroid/widget/TextView;

    .line 658
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2, v12}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->CommentCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_327

    .line 663
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$layout;->bz_market_review_of_review_previous:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 664
    .local v13, "headerViewPrevious":Landroid/view/View;
    sget v2, Lic/buzzebeeslib/R$id;->layoutRootPrevious:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutRootPrevious:Landroid/widget/RelativeLayout;

    .line 665
    sget v2, Lic/buzzebeeslib/R$id;->ivLoadingPrevious:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gIvLoadingPrevious:Landroid/widget/ImageView;

    .line 666
    sget v2, Lic/buzzebeeslib/R$id;->pbLoadingPrevious:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gPbLoadingPrevious:Landroid/widget/ProgressBar;

    .line 667
    sget v2, Lic/buzzebeeslib/R$id;->tvPreviousReview:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lic/buzzebeeslib/R$string;->market_review_of_review_previous:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutRootPrevious:Landroid/widget/RelativeLayout;

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$4;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2, v13}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 687
    .end local v13    # "headerViewPrevious":Landroid/view/View;
    :cond_327
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$layout;->bz_market_review_of_review_post:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 689
    .local v11, "footerViewReview":Landroid/view/View;
    sget v2, Lic/buzzebeeslib/R$id;->txtPostComment:I

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTxtPostComment:Landroid/widget/TextView;

    .line 690
    sget v2, Lic/buzzebeeslib/R$id;->btnPostComment:I

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gBtnPostComment:Landroid/widget/Button;

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTxtPostComment:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gBtnPostComment:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gBtnPostComment:Landroid/widget/Button;

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$5;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    sget v2, Lic/buzzebeeslib/R$id;->layoutReply:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 720
    .local v22, "layoutReply":Landroid/widget/RelativeLayout;
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 721
    return-void

    .line 549
    .end local v11    # "footerViewReview":Landroid/view/View;
    .end local v18    # "isShowIcon":Z
    .end local v22    # "layoutReply":Landroid/widget/RelativeLayout;
    .end local v29    # "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    :cond_37e
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 550
    const/16 v2, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 551
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 552
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_116

    .line 562
    :cond_39a
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    invoke-virtual {v3}, Lic/buzzebeeslib/bean/CampaignReview;->GetProfileImage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->bz_image_profile_fb_m:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    goto/16 :goto_141

    .line 590
    :cond_3af
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 591
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    if-eqz v2, :cond_1ba

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ba

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1ba

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    goto/16 :goto_1ba

    .line 603
    :cond_3ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-wide v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->CreatedTime:J

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lic/buzzebeeslib/util/BBUtil;->CDateToTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1cf

    .line 613
    :cond_404
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    iput-object v3, v2, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    goto/16 :goto_20a

    .line 621
    :cond_419
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setVisibility(I)V

    goto/16 :goto_223

    .line 626
    :cond_42c
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    const-string v3, ""

    iput-object v3, v2, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    const-string v3, ""

    iput-object v3, v2, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 629
    const-string v2, ""

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    const/16 v2, 0x8

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    const/4 v2, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lic/buzzebeeslib/control/RelativeLayoutButton;->setVisibility(I)V

    goto/16 :goto_229

    .line 645
    :cond_452
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 647
    sget v2, Lic/buzzebeeslib/R$drawable;->bz_detail_liked:I

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v15, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_260
.end method

.method private doViewPhotoSmart(Ljava/lang/String;)V
    .registers 7
    .param p1, "photo_src"    # Ljava/lang/String;

    .prologue
    .line 809
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lic/buzzebeeslib/activity/PhotoViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 810
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 815
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_13
    return-void

    .line 812
    :catch_14
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|doViewPhotoSmart):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 2120
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2121
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2122
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2123
    return-object v0
.end method

.method private initialLayout()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 431
    sget v2, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvPageHeader:Landroid/widget/TextView;

    .line 432
    sget v2, Lic/buzzebeeslib/R$idMarketReviewList;->textView1:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 434
    .local v1, "textView1":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$idMarketReviewList;->pbLoadingReview:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gPbLoadingReview:Landroid/widget/ProgressBar;

    .line 435
    sget v2, Lic/buzzebeeslib/R$idMarketReviewList;->listMarketReview:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    .line 438
    sget v2, Lic/buzzebeeslib/R$id;->layoutBackButton:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 439
    .local v0, "layoutBackButton":Landroid/widget/RelativeLayout;
    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$1;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$2;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$2;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 470
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->addHeaderAndFooter()V

    .line 481
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvPageHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 484
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$layout;->bz_header_no_review_of_review:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    .line 485
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$layout;->bz_wall_list_footer:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->footerListView:Landroid/view/View;

    .line 486
    return-void
.end method

.method private loadReviewByBuzzKey(Ljava/lang/String;)V
    .registers 7
    .param p1, "pBuzzKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1306
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 1307
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadMarketReview --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;

    invoke-direct {v1, p0, v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;)V

    invoke-static {v0, v4, v1}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1309
    return-void
.end method

.method private loadReviewOfReview(Z)V
    .registers 6
    .param p1, "pLoadMore"    # Z

    .prologue
    .line 1346
    iget-boolean v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLoading:Z

    if-eqz v1, :cond_c

    .line 1347
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v2, "loadMarketReview --> can not load, because the current loading is not finish..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :goto_b
    return-void

    .line 1349
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLoading:Z

    .line 1351
    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$9;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$9;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1366
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/comments?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 1367
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_97

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_97

    .line 1368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&lastRowKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v1, v1, Lic/buzzebeeslib/bean/CampaignReview;->RowKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1372
    :goto_78
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadMarketReviewOfReview --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v1, 0x0

    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    invoke-direct {v2, p0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_b

    .line 1370
    :cond_97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&$top=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_78
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2127
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2128
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2129
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2130
    return-object v0
.end method

.method private playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 3
    .param p1, "badgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    .line 1976
    sget-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    if-nez v0, :cond_f

    .line 1977
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    .line 1978
    new-instance v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2005
    :cond_f
    return-void
.end method

.method private playPointsAndBadge()V
    .registers 3

    .prologue
    .line 1954
    :try_start_0
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 1955
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/BadgeAlert;

    .line 1956
    .local v0, "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 1962
    .end local v0    # "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    :cond_13
    :goto_13
    return-void

    .line 1959
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 409
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 412
    const-string v0, "paramMarketReview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/CampaignReview;

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    .line 413
    const-string v0, "gIsChanged"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gIsChanged:Z

    .line 415
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->setLayoutByReview(Z)V

    .line 419
    :try_start_25
    const-string v0, "listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    .line 420
    const-string v0, "listPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListPosition:I

    .line 421
    const-string v0, "itemPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mItemPosition:I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3d} :catch_3e

    .line 428
    :cond_3d
    :goto_3d
    return-void

    .line 422
    :catch_3e
    move-exception v0

    goto :goto_3d
.end method

.method private setLayoutByCatch()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1091
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ReviewOfReview_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v7, v7, Lic/buzzebeeslib/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "catch_MarketReview":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_79

    .line 1094
    :try_start_24
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_5f

    move-result v6

    if-lt v3, v6, :cond_34

    .line 1108
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_30
    invoke-direct {p0, v9}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->loadReviewOfReview(Z)V

    .line 1112
    :goto_33
    return-void

    .line 1097
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_34
    :try_start_34
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1099
    .local v5, "json_market_review":Lorg/json/JSONObject;
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    new-instance v7, Lic/buzzebeeslib/bean/CampaignReview;

    invoke-direct {v7, v5}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_42} :catch_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_42} :catch_5f

    .line 1095
    .end local v5    # "json_market_review":Lorg/json/JSONObject;
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 1100
    :catch_45
    move-exception v1

    .line 1101
    .local v1, "e":Lorg/json/JSONException;
    :try_start_46
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(GetMarketReviewRequestListener|onComplete|for|JSONException):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5e} :catch_5f

    goto :goto_42

    .line 1104
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_5f
    move-exception v2

    .line 1105
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(initialLayoutByCatch|step1):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 1110
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_79
    invoke-direct {p0, v9}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->loadReviewOfReview(Z)V

    goto :goto_33
.end method

.method private setLayoutByReview(Z)V
    .registers 7
    .param p1, "pLoadMore"    # Z

    .prologue
    .line 1116
    if-eqz p1, :cond_f

    .line 1117
    :try_start_2
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->notifyDataSetChanged()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_9a

    .line 1205
    :cond_7
    :goto_7
    :try_start_7
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->footerListView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_177

    .line 1213
    :goto_e
    return-void

    .line 1119
    :cond_f
    :try_start_f
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    if-eqz v2, :cond_26

    .line 1121
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_9a

    move-result v2

    if-lez v2, :cond_c9

    .line 1123
    :try_start_1b
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_26

    .line 1124
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_b5

    .line 1149
    :cond_26
    :goto_26
    :try_start_26
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 1150
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    if-nez v2, :cond_116

    .line 1151
    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    .line 1152
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    if-eqz v2, :cond_100

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_100

    .line 1153
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1154
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1155
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1175
    :cond_59
    :goto_59
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    if-eqz v2, :cond_7

    .line 1176
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_7

    .line 1177
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_157

    .line 1178
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_77} :catch_9a

    move-result v2

    if-lez v2, :cond_7

    .line 1180
    :try_start_7a
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1181
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_85} :catch_86

    goto :goto_7

    .line 1183
    :catch_86
    move-exception v1

    .line 1184
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_87
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1185
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    sget v3, Lic/buzzebeeslib/R$idHeaderNoReview;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_98} :catch_9a

    goto/16 :goto_7

    .line 1210
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_9a
    move-exception v1

    .line 1211
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v2, "buzzebees.MarketReview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error While Load Market Review...:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1126
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_b5
    move-exception v1

    .line 1127
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_b6
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_26

    .line 1128
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    sget v3, Lic/buzzebeeslib/R$idHeaderNoReview;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_26

    .line 1132
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_c9
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e0

    .line 1133
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    sget v3, Lic/buzzebeeslib/R$idHeaderNoReview;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_de} :catch_9a

    goto/16 :goto_26

    .line 1136
    :cond_e0
    :try_start_e0
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_26

    .line 1137
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_eb} :catch_ed

    goto/16 :goto_26

    .line 1139
    :catch_ed
    move-exception v1

    .line 1140
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_ee
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_26

    .line 1141
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    sget v3, Lic/buzzebeeslib/R$idHeaderNoReview;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_26

    .line 1157
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_100
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1158
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1159
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_59

    .line 1162
    :cond_116
    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    .line 1163
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    if-eqz v2, :cond_141

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_141

    .line 1164
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1165
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1166
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_59

    .line 1168
    :cond_141
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1169
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1170
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_155} :catch_9a

    goto/16 :goto_59

    .line 1191
    :cond_157
    :try_start_157
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1192
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_162} :catch_164

    goto/16 :goto_7

    .line 1194
    :catch_164
    move-exception v1

    .line 1195
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_165
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1196
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    sget v3, Lic/buzzebeeslib/R$idHeaderNoReview;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1206
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_177
    move-exception v0

    .line 1207
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->footerListView:Landroid/view/View;

    sget v3, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_185} :catch_9a

    goto/16 :goto_e
.end method


# virtual methods
.method public doLike(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 823
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .line 824
    .local v1, "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->doLike(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 828
    .end local v1    # "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    :goto_9
    return-void

    .line 825
    :catch_a
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|doLike):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public doLike(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 6
    .param p1, "tagLike"    # Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .prologue
    .line 831
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvPageHeader:Landroid/widget/TextView;

    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$6;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$6;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    .line 840
    const-wide/16 v2, 0x64

    .line 831
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 841
    return-void
.end method

.method public doRefresh(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 818
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->loadReviewOfReview(Z)V

    .line 819
    return-void
.end method

.method public doReviewOfReview(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1889
    return-void
.end method

.method public doSeeMore(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1802
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1803
    .local v1, "position":I
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/CampaignReview;

    .line 1805
    .local v2, "review":Lic/buzzebeeslib/bean/CampaignReview;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    .line 1806
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->notifyDataSetChanged()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1810
    .end local v1    # "position":I
    .end local v2    # "review":Lic/buzzebeeslib/bean/CampaignReview;
    :goto_1a
    return-void

    .line 1807
    :catch_1b
    move-exception v0

    .line 1808
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|doSeeMore):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1488
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1509
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    .line 1239
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1240
    .local v4, "name":Ljava/lang/String;
    sget v5, Lic/buzzebeeslib/R$string;->menu_popup_delete:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 1241
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    if-eqz v5, :cond_62

    .line 1242
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1243
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v5, Lic/buzzebeeslib/R$string;->menu_popup_delete_confirm:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1244
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1245
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Yes"

    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$7;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$7;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1255
    const-string v6, "No"

    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$8;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$8;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1260
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1261
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1271
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "message":Ljava/lang/String;
    :cond_62
    :goto_62
    const/4 v5, 0x1

    return v5

    .line 1263
    :cond_64
    sget v5, Lic/buzzebeeslib/R$string;->menu_popup_like:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1264
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    if-eqz v5, :cond_62

    .line 1265
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1266
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "MarketReview"

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1267
    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_62
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    if-eqz p1, :cond_bb

    .line 168
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v8, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_c
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->requestWindowFeature(I)Z

    .line 173
    invoke-static {p0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 174
    sget v7, Lic/buzzebeeslib/R$layout;->bz_market_review_of_review_list:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->setContentView(I)V

    .line 176
    new-instance v7, Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lic/buzzebeeslib/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    .line 185
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gHandler:Landroid/os/Handler;

    .line 187
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "fonts/kit55p.ttf"

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;

    .line 190
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 191
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 193
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "cache_review"

    invoke-direct {v0, v7, v8}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3e800000

    invoke-virtual {v0, v7, v8}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 195
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 196
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 197
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gScreenHeight:I

    .line 198
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gScreenWidth:I

    .line 200
    iget v6, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gScreenWidth:I

    .line 201
    .local v6, "width":I
    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gScreenHeight:I

    .line 203
    .local v2, "height":I
    if-le v2, v6, :cond_c4

    .end local v2    # "height":I
    :goto_78
    div-int/lit8 v3, v2, 0x2

    .line 204
    .local v3, "longest":I
    new-instance v7, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 205
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v8, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 206
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 207
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 216
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "MarketReview"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lic/buzzebeeslib/bean/CampaignReview;

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    .line 217
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    if-nez v7, :cond_c6

    .line 218
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "BuzzKey"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "paramBuzzKey":Ljava/lang/String;
    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->loadReviewByBuzzKey(Ljava/lang/String;)V

    .line 229
    .end local v5    # "paramBuzzKey":Ljava/lang/String;
    :goto_ba
    return-void

    .line 170
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "longest":I
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "width":I
    :cond_bb
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v8, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "width":I
    :cond_c4
    move v2, v6

    .line 203
    goto :goto_78

    .line 221
    .end local v2    # "height":I
    .restart local v3    # "longest":I
    :cond_c6
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->initialLayout()V

    .line 223
    if-nez p1, :cond_cf

    .line 224
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->setLayoutByCatch()V

    goto :goto_ba

    .line 226
    :cond_cf
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_ba
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .param p1, "cm"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "cminf"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x1

    .line 1221
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 1222
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    if-eqz v1, :cond_54

    .line 1223
    sget v1, Lic/buzzebeeslib/R$string;->menu_popup_header:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1224
    sget-object v1, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v2, "com.ptt.BlueCard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1225
    iget v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->MENU_SHOW_LIKE:I

    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->MENU_SHOW_LIKE:I

    sget v3, Lic/buzzebeeslib/R$string;->menu_popup_like:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1228
    :cond_28
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/LibUserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, "UserId":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v1, v1, Lic/buzzebeeslib/bean/CampaignReview;->UserId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1230
    iget v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->MENU_REVIEW_DELETE:I

    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->MENU_REVIEW_DELETE:I

    sget v3, Lic/buzzebeeslib/R$string;->menu_popup_delete:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1233
    :cond_47
    iget v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->MENU_CANCEL:I

    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->MENU_CANCEL:I

    sget v3, Lic/buzzebeeslib/R$string;->menu_popup_cancel:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1235
    .end local v0    # "UserId":Ljava/lang/String;
    :cond_54
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 320
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 321
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)V

    invoke-static {v0}, Lic/buzzebeeslib/util/async/PostEvents;->removePostListener(Lic/buzzebeeslib/util/async/PostEvents$PostListener;)V

    .line 325
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 333
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 336
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 337
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 233
    const/4 v2, 0x4

    if-ne p1, v2, :cond_28

    .line 234
    iget-boolean v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gIsChanged:Z

    if-eqz v2, :cond_23

    .line 235
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 236
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "review"

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 238
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 239
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->finish()V

    .line 241
    const/4 v2, 0x1

    .line 246
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_22
    return v2

    .line 243
    :cond_23
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_22

    .line 246
    :cond_28
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_22
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 289
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 290
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 302
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 303
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->clearPostListener()V

    .line 304
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 314
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 315
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 402
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 403
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 258
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 259
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onResume() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 272
    new-instance v0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)V

    invoke-static {v0}, Lic/buzzebeeslib/util/async/PostEvents;->addPostListener(Lic/buzzebeeslib/util/async/PostEvents$PostListener;)V

    .line 279
    :try_start_19
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_24

    .line 280
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 281
    :cond_24
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListPosition:I

    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mItemPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_2e

    .line 285
    :goto_2d
    return-void

    .line 282
    :catch_2e
    move-exception v0

    goto :goto_2d
.end method

.method protected onResumeFragments()V
    .registers 1

    .prologue
    .line 388
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 398
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 350
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v3, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    const-string v2, "paramMarketReview"

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 365
    const-string v2, "gIsChanged"

    iget-boolean v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gIsChanged:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    :try_start_1f
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    .line 371
    const-string v2, "listState"

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 374
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListPosition:I

    .line 375
    const-string v2, "listPosition"

    iget v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_50

    :goto_46
    iput v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mItemPosition:I

    .line 380
    const-string v1, "itemPosition"

    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mItemPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    .end local v0    # "itemView":Landroid/view/View;
    :goto_4f
    return-void

    .line 379
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_50
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_53} :catch_55

    move-result v1

    goto :goto_46

    .line 381
    .end local v0    # "itemView":Landroid/view/View;
    :catch_55
    move-exception v1

    goto :goto_4f
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 252
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 253
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 308
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 309
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)Z
    .registers 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "progressBarLoadingIcon"    # Landroid/widget/ProgressBar;
    .param p3, "imgReviewIcon"    # Landroid/widget/ImageView;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v1, 0x8

    .line 788
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/StickerUtil;->STICKERS_MAPPING(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/Sticker;

    .line 789
    .local v6, "sticker":Lic/buzzebeeslib/bean/Sticker;
    if-eqz v6, :cond_33

    .line 790
    iget-object v0, v6, Lic/buzzebeeslib/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 791
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v1, v6, Lic/buzzebeeslib/bean/Sticker;->PictureUrl:Ljava/lang/String;

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 793
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 803
    :goto_2a
    return v5

    .line 796
    :cond_2b
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 797
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 798
    goto :goto_2a

    .line 801
    :cond_33
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 802
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 803
    goto :goto_2a
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1892
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$10;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$10;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1899
    return-void
.end method
