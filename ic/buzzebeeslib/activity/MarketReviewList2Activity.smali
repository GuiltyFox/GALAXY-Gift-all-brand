.class public Lic/buzzebeeslib/activity/MarketReviewList2Activity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MarketReviewList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;,
        Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;,
        Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;,
        Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;,
        Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;,
        Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;,
        Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;,
        Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_review"

.field private static final ITEM_POSITION_KEY:Ljava/lang/String; = "itemPosition"

.field private static final LIST_POSITION_KEY:Ljava/lang/String; = "listPosition"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "listState"

.field private static final MEDIA_TYPE_IMAGE:I = 0x64

.field private static final MEDIA_TYPE_VIDEO:I = 0xc8

.field private static final RC_BrowseImage:I = 0xb

.field private static final RC_TakePhoto:I = 0x15

.field private static mediaFile:Ljava/io/File;

.field private static path:Ljava/lang/String;


# instance fields
.field private final MENU_BrowseImage:I

.field private MENU_CANCEL:I

.field private final MENU_DeletePhoto:I

.field private MENU_REVIEW_DELETE:I

.field private MENU_SHOW_LIKE:I

.field private final MENU_TakePhoto:I

.field private RC_REVIEW_OF_REVIEW:I

.field private RC_REVIEW_POST:I

.field private TAG:Ljava/lang/String;

.field private btnCancel:Landroid/widget/ImageView;

.field private btnPost:Landroid/widget/Button;

.field private contentImage:Landroid/widget/LinearLayout;

.field private contentMedia:Landroid/widget/RelativeLayout;

.field private contentSticker:Landroid/widget/LinearLayout;

.field private etTextMessage:Landroid/widget/EditText;

.field private footerListView:Landroid/view/View;

.field private gAdapter:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

.field private gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

.field private gCurrentStickerSet:I

.field private gDialog:Landroid/app/ProgressDialog;

.field private gFileUri:Landroid/net/Uri;

.field private gFontDefault:Landroid/graphics/Typeface;

.field private gFontHeader:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gImgAnimation:Landroid/view/animation/AnimationSet;

.field private gImgBadge:Landroid/widget/ImageView;

.field private gImgSticker:Landroid/widget/ImageView;

.field private gIsHaveMoreData:Z

.field private gIsLiking:Z

.field private gLayoutBadge:Landroid/widget/RelativeLayout;

.field private gLayoutNewbie:Landroid/widget/RelativeLayout;

.field private gLayoutRoot:Landroid/widget/LinearLayout;

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

.field private gPostData:Lic/buzzebeeslib/util/async/PostData;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gTvBadge:Landroid/widget/TextView;

.field private gTvBadgePoint:Landroid/widget/TextView;

.field private gTvPageHeader:Landroid/widget/TextView;

.field private gridStickerSet:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

.field private header_no_review_ListView:Landroid/view/View;

.field private heightKeyboard:I

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mItemPosition:I

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;

.field private myZoomInAnimation:Landroid/view/animation/Animation;

.field private myZoomOutAnimation:Landroid/view/animation/Animation;

.field private pagerSticker:Landroid/support/v4/view/ViewPager;

.field private paramCampaign:Lic/buzzebeeslib/bean/Campaign;

.field private paramCampaignID:Ljava/lang/String;

.field tvPageHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x14

    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 132
    const-class v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    .line 160
    iput v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->RC_REVIEW_OF_REVIEW:I

    .line 174
    iput v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->RC_REVIEW_POST:I

    .line 178
    iput v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gCurrentStickerSet:I

    .line 184
    const/4 v0, 0x1

    iput v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->MENU_BrowseImage:I

    .line 185
    const/4 v0, 0x2

    iput v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->MENU_TakePhoto:I

    .line 186
    const/4 v0, 0x3

    iput v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->MENU_DeletePhoto:I

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mListState:Landroid/os/Parcelable;

    .line 438
    iput v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mListPosition:I

    .line 439
    iput v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mItemPosition:I

    .line 757
    iput v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->MENU_SHOW_LIKE:I

    .line 758
    iput v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->MENU_REVIEW_DELETE:I

    .line 759
    const/16 v0, 0x1e

    iput v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->MENU_CANCEL:I

    .line 845
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLoading:Z

    .line 1169
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gIsLiking:Z

    .line 130
    return-void
.end method

.method private PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 10
    .param p1, "pBadgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    .line 2763
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

    .line 2764
    .local v1, "imgUrl":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgBadge:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->bz_badge_default_512:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2766
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gTvBadge:Landroid/widget/TextView;

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

    .line 2767
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gTvBadgePoint:Landroid/widget/TextView;

    iget v2, p1, Lic/buzzebeeslib/bean/BadgeAlert;->points:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2768
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2770
    sget v0, Lic/buzzebeeslib/R$anim;->badge_zoom_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->myZoomInAnimation:Landroid/view/animation/Animation;

    .line 2771
    sget v0, Lic/buzzebeeslib/R$anim;->badge_zoom_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    .line 2773
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->myZoomInAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2834
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewList2Activity$20;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$20;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2858
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2859
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2861
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    .line 2862
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->myZoomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2863
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2864
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgBadge:Landroid/widget/ImageView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2866
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    .line 2867
    .local v6, "slideIn":Landroid/view/animation/Animation;
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2868
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2869
    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2870
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2871
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/bean/Campaign;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V
    .registers 1

    .prologue
    .line 685
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->setLayoutByCatch()V

    return-void
.end method

.method static synthetic access$10(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Z)V
    .registers 2

    .prologue
    .line 845
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLoading:Z

    return-void
.end method

.method static synthetic access$11(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$12(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/bean/CampaignReview;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    return-void
.end method

.method static synthetic access$14(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V
    .registers 1

    .prologue
    .line 2696
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->playPointsAndBadge()V

    return-void
.end method

.method static synthetic access$16(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    return-void
.end method

.method static synthetic access$17(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->pagerSticker:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$18(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$19(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/util/async/PostData;)V
    .registers 2

    .prologue
    .line 177
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPbLoadingReview:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$20(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentMedia:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$21(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/bean/Campaign;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-object v0
.end method

.method static synthetic access$22(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/bean/CampaignReview;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    return-object v0
.end method

.method static synthetic access$23(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$24(Lic/buzzebeeslib/activity/MarketReviewList2Activity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 3

    .prologue
    .line 1632
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->actionLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    return-void
.end method

.method static synthetic access$25(Lic/buzzebeeslib/activity/MarketReviewList2Activity;I)V
    .registers 2

    .prologue
    .line 175
    iput p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->heightKeyboard:I

    return-void
.end method

.method static synthetic access$26(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentImage:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$27(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentSticker:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$28(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gScreenHeight:I

    return v0
.end method

.method static synthetic access$29(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->btnPost:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->etTextMessage:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$31(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Z
    .registers 2

    .prologue
    .line 845
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLoading:Z

    return v0
.end method

.method static synthetic access$32(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gIsHaveMoreData:Z

    return v0
.end method

.method static synthetic access$33(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$34(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Z)V
    .registers 2

    .prologue
    .line 847
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->loadMarketReview(Z)V

    return-void
.end method

.method static synthetic access$35(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gridStickerSet:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    return-object v0
.end method

.method static synthetic access$36(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 2720
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$37(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Landroid/widget/LinearLayout;)V
    .registers 2

    .prologue
    .line 2719
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$38(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 2720
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgBadge:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$39(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 2724
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$40(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 2721
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gTvBadge:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$41(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 2723
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gTvBadgePoint:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$42(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 2722
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$43(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 2722
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$44(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 2719
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$45(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 2

    .prologue
    .line 2762
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V

    return-void
.end method

.method static synthetic access$46(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 2726
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$47(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 2880
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Z)V
    .registers 2

    .prologue
    .line 151
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gIsHaveMoreData:Z

    return-void
.end method

.method static synthetic access$8(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Z)V
    .registers 2

    .prologue
    .line 717
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->setLayoutByReview(Z)V

    return-void
.end method

.method static synthetic access$9(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/control/PullToRefreshListView;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    return-object v0
.end method

.method private actionLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 9
    .param p1, "isLike"    # Z
    .param p2, "tagLike"    # Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1633
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->layoutLike:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1634
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->pbImgLike:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1635
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1636
    if-eqz p1, :cond_5a

    .line 1637
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon_like_a:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1642
    :goto_1f
    if-eqz p1, :cond_66

    .line 1643
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

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1644
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    invoke-static {v0, v4, v1, v4}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 1649
    :goto_59
    return-void

    .line 1639
    .end local v0    # "url":Ljava/lang/String;
    :cond_5a
    iget-object v1, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon_like_b:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_1f

    .line 1646
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

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1647
    .restart local v0    # "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;

    invoke-direct {v1, p0, v5, p2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    invoke-static {v0, v4, v1, v4}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_59
.end method

.method private checkLogin()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1113
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1114
    .local v2, "tokenBzBs":Ljava/lang/String;
    if-eqz v2, :cond_15

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1115
    const/4 v3, 0x1

    .line 1127
    :goto_14
    return v3

    .line 1117
    :cond_15
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1118
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v4, Lic/buzzebeeslib/R$string;->dialog_login_header:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1119
    sget v4, Lic/buzzebeeslib/R$string;->dialog_login_message:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Lic/buzzebeeslib/activity/MarketReviewList2Activity$6;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$6;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1124
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1125
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_14
.end method

.method private getCampaign(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 567
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPbLoadingReview:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 568
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

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

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

    .line 570
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 572
    return-void
.end method

.method private static getOutputMediaFile(I)Ljava/io/File;
    .registers 8
    .param p0, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 2476
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "BuzzeBees"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2480
    .local v1, "mediaStorageDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 2481
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 2501
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1a
    :goto_1a
    return-object v3

    .line 2486
    .restart local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1b
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2487
    .local v2, "timeStamp":Ljava/lang/String;
    const/16 v4, 0x64

    if-ne p0, v4, :cond_89

    .line 2488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "BB_IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->path:Ljava/lang/String;

    .line 2489
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "BB_IMG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mediaFile:Ljava/io/File;

    .line 2496
    :goto_86
    sget-object v3, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mediaFile:Ljava/io/File;

    goto :goto_1a

    .line 2490
    :cond_89
    const/16 v4, 0xc8

    if-ne p0, v4, :cond_1a

    .line 2491
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "VID_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mediaFile:Ljava/io/File;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_bb} :catch_bc

    goto :goto_86

    .line 2498
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    .end local v2    # "timeStamp":Ljava/lang/String;
    :catch_bc
    move-exception v0

    .line 2499
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a
.end method

.method private static getOutputMediaFileUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "type"    # I

    .prologue
    .line 2438
    invoke-static {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 2439
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 2440
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 2442
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 2874
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2875
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2876
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2877
    return-object v0
.end method

.method private initialLayoutComment()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x42900000

    const/4 v8, 0x1

    .line 2128
    sget v6, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2137
    .local v5, "tvPageHeader":Landroid/widget/TextView;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v5, v6, v7, v8}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 2139
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v6, :cond_21

    .line 2140
    sget v6, Lic/buzzebeeslib/R$string;->market_review_post_header:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2143
    :cond_21
    sget v6, Lic/buzzebeeslib/R$idMarketReviewList;->pbLoadingReview:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPbLoadingReview:Landroid/widget/ProgressBar;

    .line 2144
    sget v6, Lic/buzzebeeslib/R$id;->etTextMessage:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->etTextMessage:Landroid/widget/EditText;

    .line 2145
    sget v6, Lic/buzzebeeslib/R$id;->btnPost:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->btnPost:Landroid/widget/Button;

    .line 2146
    sget v6, Lic/buzzebeeslib/R$id;->contentImage:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentImage:Landroid/widget/LinearLayout;

    .line 2147
    sget v6, Lic/buzzebeeslib/R$id;->contentSticker:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentSticker:Landroid/widget/LinearLayout;

    .line 2148
    sget v6, Lic/buzzebeeslib/R$id;->pagerSticker:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->pagerSticker:Landroid/support/v4/view/ViewPager;

    .line 2149
    sget v6, Lic/buzzebeeslib/R$id;->gridStickerSet:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gridStickerSet:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    .line 2150
    sget v6, Lic/buzzebeeslib/R$id;->contentMedia:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentMedia:Landroid/widget/RelativeLayout;

    .line 2151
    sget v6, Lic/buzzebeeslib/R$id;->imgMedia:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    .line 2152
    sget v6, Lic/buzzebeeslib/R$id;->btnCancel:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->btnCancel:Landroid/widget/ImageView;

    .line 2153
    sget v6, Lic/buzzebeeslib/R$id;->horScr:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    .line 2155
    .local v2, "horScr":Landroid/widget/HorizontalScrollView;
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->etTextMessage:Landroid/widget/EditText;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/EditText;Landroid/content/Context;)V

    .line 2156
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->btnPost:Landroid/widget/Button;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 2158
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->GetPixelFromDips(F)I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->GetPixelFromDips(F)I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2159
    .local v4, "paramsHori":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gridStickerSet:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v6, v4}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2161
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/LibUserLogin;->GetKeyboardHeight(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_eb

    .line 2162
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 2163
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 2164
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetKeyboardHeight(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getStatusBarHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2165
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentImage:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2166
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentSticker:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2169
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_eb
    sget v6, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2170
    .local v0, "activityRootView":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewList2Activity$8;

    invoke-direct {v7, p0, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$8;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2190
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewList2Activity$9;

    invoke-direct {v7, p0, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$9;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2206
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->etTextMessage:Landroid/widget/EditText;

    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$10;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2249
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->btnPost:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 2250
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->btnPost:Landroid/widget/Button;

    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewList2Activity$11;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$11;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2261
    sget v6, Lic/buzzebeeslib/R$id;->listMarketReview:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/control/PullToRefreshListView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    .line 2263
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lic/buzzebeeslib/R$layout;->bz_header_no_review:I

    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;

    .line 2271
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lic/buzzebeeslib/R$layout;->bz_wall_list_footer:I

    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->footerListView:Landroid/view/View;

    .line 2274
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewList2Activity$12;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$12;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-virtual {v6, v7}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnRefreshListener(Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;)V

    .line 2281
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-virtual {v6, v7}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2317
    new-instance v1, Lic/buzzebeeslib/adapter/KeyboardStickerSetAdapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-direct {v1, p0, v6, v7}, Lic/buzzebeeslib/adapter/KeyboardStickerSetAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/bitmapfun/util/ImageFetcher;)V

    .line 2318
    .local v1, "adapterStickerSet":Lic/buzzebeeslib/adapter/KeyboardStickerSetAdapter;
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gridStickerSet:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v6, v1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2320
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->pagerSticker:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2321
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->pagerSticker:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 2323
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gridStickerSet:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewList2Activity$14;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$14;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-virtual {v6, v7}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2335
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->pagerSticker:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewList2Activity$15;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$15;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2358
    return-void
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 560
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 561
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-nez v0, :cond_20

    .line 562
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "campaignID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaignID:Ljava/lang/String;

    .line 564
    :cond_20
    return-void
.end method

.method private loadMarketReview(Z)V
    .registers 6
    .param p1, "pLoadMore"    # Z

    .prologue
    .line 848
    iget-boolean v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLoading:Z

    if-eqz v1, :cond_c

    .line 849
    const-string v1, "buzzebees.MarketReview"

    const-string v2, "loadMarketReview --> can not load, because the current loading is not finish..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :goto_b
    return-void

    .line 851
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLoading:Z

    .line 853
    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewList2Activity$5;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$5;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/buzz?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

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

    .line 860
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_7f

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7f

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&lastRowKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

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

    .line 863
    :cond_7f
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadMarketReview --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const/4 v1, 0x0

    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;

    invoke-direct {v2, p0, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Z)V

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_b
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2881
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2882
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2883
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2884
    return-object v0
.end method

.method private playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 3
    .param p1, "badgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    .line 2730
    sget-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    if-nez v0, :cond_f

    .line 2731
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    .line 2732
    new-instance v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$18;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$18;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/bean/BadgeAlert;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2759
    :cond_f
    return-void
.end method

.method private playPointsAndBadge()V
    .registers 3

    .prologue
    .line 2708
    :try_start_0
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 2709
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/BadgeAlert;

    .line 2710
    .local v0, "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 2716
    .end local v0    # "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    :cond_13
    :goto_13
    return-void

    .line 2713
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 529
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 532
    const-string v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 534
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->setLayoutByReview(Z)V

    .line 538
    :try_start_1d
    const-string v0, "listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mListState:Landroid/os/Parcelable;

    .line 539
    const-string v0, "listPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mListPosition:I

    .line 540
    const-string v0, "itemPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mItemPosition:I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_35} :catch_36

    .line 547
    :cond_35
    :goto_35
    return-void

    .line 541
    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method private saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW(Ljava/lang/String;)V
    .registers 15
    .param p1, "pStrComment"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2079
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;

    const-string v2, "private void saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW() {"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2082
    .local v4, "postFileName":Ljava/lang/String;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2087
    .local v7, "params":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/buzz?token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2089
    .local v1, "url":Ljava/lang/String;
    const-string v0, "message"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    :try_start_5e
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/Sticker;

    .line 2094
    .local v12, "sticker":Lic/buzzebeeslib/bean/Sticker;
    if-eqz v12, :cond_6f

    .line 2095
    const-string v0, "sticker"

    iget-object v2, v12, Lic/buzzebeeslib/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6f} :catch_cb

    .line 2101
    .end local v12    # "sticker":Lic/buzzebeeslib/bean/Sticker;
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_bc

    .line 2102
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_bc

    .line 2104
    :try_start_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_photo.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2105
    .local v10, "fullpath":Ljava/lang/String;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2106
    .local v11, "out":Ljava/io/FileOutputStream;
    const-string v0, "source"

    invoke-virtual {v7, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_a1} :catch_e5
    .catchall {:try_start_79 .. :try_end_a1} :catchall_11a

    .line 2111
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_bc

    .line 2112
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 2113
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2115
    :cond_b8
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 2121
    .end local v10    # "fullpath":Ljava/lang/String;
    .end local v11    # "out":Ljava/io/FileOutputStream;
    :cond_bc
    :goto_bc
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "RequestParams"

    const-string v3, "Market Review"

    const/16 v6, 0x18

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lic/buzzebeeslib/util/PostAsyncUtil;->saveParamsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2125
    return-void

    .line 2097
    :catch_cb
    move-exception v9

    .line 2098
    .local v9, "ex":Ljava/lang/Exception;
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while get sticker!:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 2108
    .end local v9    # "ex":Ljava/lang/Exception;
    :catch_e5
    move-exception v8

    .line 2109
    .local v8, "e":Ljava/lang/Exception;
    :try_start_e6
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(Exception|saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW|1):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catchall {:try_start_e6 .. :try_end_fe} :catchall_11a

    .line 2111
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_bc

    .line 2112
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 2113
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2115
    :cond_115
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto :goto_bc

    .line 2110
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_11a
    move-exception v0

    .line 2111
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_136

    .line 2112
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_132

    .line 2113
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2115
    :cond_132
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 2117
    :cond_136
    throw v0
.end method

.method private setLayoutByCatch()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 686
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MarketReview_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "catch_MarketReview":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_79

    .line 690
    :try_start_24
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 691
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_5f

    move-result v6

    if-lt v3, v6, :cond_34

    .line 711
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_30
    invoke-direct {p0, v9}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->loadMarketReview(Z)V

    .line 715
    :goto_33
    return-void

    .line 693
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_34
    :try_start_34
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 695
    .local v5, "json_market_review":Lorg/json/JSONObject;
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    new-instance v7, Lic/buzzebeeslib/bean/CampaignReview;

    invoke-direct {v7, v5}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_42} :catch_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_42} :catch_5f

    .line 691
    .end local v5    # "json_market_review":Lorg/json/JSONObject;
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 697
    :catch_45
    move-exception v1

    .line 698
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

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5e} :catch_5f

    goto :goto_42

    .line 701
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_5f
    move-exception v2

    .line 703
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

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 713
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_79
    invoke-direct {p0, v9}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->loadMarketReview(Z)V

    goto :goto_33
.end method

.method private setLayoutByReview(Z)V
    .registers 7
    .param p1, "pLoadMore"    # Z

    .prologue
    const/4 v4, 0x0

    .line 719
    if-eqz p1, :cond_10

    .line 720
    :try_start_3
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->notifyDataSetChanged()V

    .line 750
    :cond_8
    :goto_8
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->footerListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 755
    :goto_f
    return-void

    .line 722
    :cond_10
    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    .line 723
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_38

    move-result v1

    if-lez v1, :cond_57

    .line 726
    :try_start_25
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v1, :cond_30

    .line 728
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_30} :catch_6b

    .line 734
    :cond_30
    :goto_30
    :try_start_30
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_8

    .line 751
    :catch_38
    move-exception v0

    .line 752
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

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1, v4}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_f

    .line 737
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_57
    :try_start_57
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5d} :catch_38

    .line 740
    :try_start_5d
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 742
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_68} :catch_69

    goto :goto_8

    .line 744
    :catch_69
    move-exception v1

    goto :goto_8

    .line 730
    :catch_6b
    move-exception v1

    goto :goto_30
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 2671
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2673
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public deleteMedia(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 2418
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_2a

    .line 2419
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_20

    .line 2420
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2421
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2423
    :cond_1c
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v3, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 2425
    :cond_20
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_2a

    .line 2426
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v3, v0, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 2430
    :cond_2a
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    if-eqz v0, :cond_45

    .line 2431
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 2432
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2433
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentMedia:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2435
    :cond_45
    return-void
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1083
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->finish()V

    .line 1084
    return-void
.end method

.method public doLike(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1174
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .line 1175
    .local v1, "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->doLike(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 1180
    .end local v1    # "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    :goto_9
    return-void

    .line 1176
    :catch_a
    move-exception v0

    .line 1177
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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public doLike(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 6
    .param p1, "tagLike"    # Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .prologue
    .line 1515
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gTvPageHeader:Landroid/widget/TextView;

    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewList2Activity$7;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$7;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    .line 1524
    const-wide/16 v2, 0x64

    .line 1515
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1525
    return-void
.end method

.method public doPost(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2021
    const/4 v0, 0x0

    .line 2023
    .local v0, "isHaveDataPost":Z
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->etTextMessage:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2025
    .local v5, "stringComment":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1f

    .line 2026
    sget v6, Lic/buzzebeeslib/R$string;->post_require_text:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    .line 2076
    :goto_1e
    return-void

    .line 2030
    :cond_1f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_26

    .line 2031
    const/4 v0, 0x1

    .line 2034
    :cond_26
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/Sticker;

    .line 2035
    .local v3, "sticker":Lic/buzzebeeslib/bean/Sticker;
    if-eqz v3, :cond_31

    .line 2036
    const/4 v0, 0x1

    .line 2039
    :cond_31
    const/4 v1, 0x0

    .line 2040
    .local v1, "isHavePicture":Z
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v6, :cond_3e

    .line 2041
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v6, v6, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3e

    .line 2042
    const/4 v0, 0x1

    .line 2043
    const/4 v1, 0x1

    .line 2047
    :cond_3e
    if-eqz v0, :cond_bb

    .line 2048
    if-nez v1, :cond_a8

    .line 2049
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "api/campaign/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/buzz?token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2051
    .local v4, "strURL":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2052
    .local v2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    new-instance v6, Lic/buzzebeeslib/bean/InputItem;

    const-string v7, "message"

    invoke-direct {v6, v7, v5}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2054
    if-eqz v3, :cond_8e

    .line 2055
    new-instance v6, Lic/buzzebeeslib/bean/InputItem;

    const-string v7, "sticker"

    iget-object v8, v3, Lic/buzzebeeslib/bean/Sticker;->Text:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2058
    :cond_8e
    const-string v6, ""

    sget v7, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p0, v6, v7, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gDialog:Landroid/app/ProgressDialog;

    .line 2059
    new-instance v6, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$PostReviewListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    const/4 v7, 0x0

    invoke-static {v4, v2, v6, v7}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 2062
    .end local v2    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v4    # "strURL":Ljava/lang/String;
    :cond_a8
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->etTextMessage:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 2073
    :cond_bb
    sget v6, Lic/buzzebeeslib/R$string;->post_require:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method public doPostMarketReview(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1099
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->checkLogin()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1110
    :goto_6
    return-void

    .line 1103
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/CampaignPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1104
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PAGE_MODE"

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1105
    const-string v1, "campaign"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1106
    const-string v1, "uid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    const-string v1, "type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public doRefresh(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1087
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->loadMarketReview(Z)V

    .line 1088
    return-void
.end method

.method public doReviewOfReview(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1184
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1185
    .local v2, "position":I
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/CampaignReview;

    .line 1187
    .local v3, "review":Lic/buzzebeeslib/bean/CampaignReview;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1188
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "Campaign"

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1189
    const-string v4, "MarketReview"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1190
    iget v4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->RC_REVIEW_OF_REVIEW:I

    invoke-virtual {p0, v1, v4}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 1194
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "position":I
    .end local v3    # "review":Lic/buzzebeeslib/bean/CampaignReview;
    :goto_2e
    return-void

    .line 1191
    :catch_2f
    move-exception v0

    .line 1192
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(Exception|doReviewOfReview):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public doSeeMore(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1198
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1200
    .local v1, "position":I
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/CampaignReview;

    .line 1202
    .local v2, "review":Lic/buzzebeeslib/bean/CampaignReview;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    .line 1203
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->notifyDataSetChanged()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1207
    .end local v1    # "position":I
    .end local v2    # "review":Lic/buzzebeeslib/bean/CampaignReview;
    :goto_1a
    return-void

    .line 1204
    :catch_1b
    move-exception v0

    .line 1205
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

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public getStatusBarHeight()I
    .registers 7

    .prologue
    .line 2677
    const/4 v1, 0x0

    .line 2678
    .local v1, "result":I
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2679
    .local v0, "resourceId":I
    if-lez v0, :cond_19

    .line 2680
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2682
    :cond_19
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 947
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 951
    if-ne p2, v1, :cond_8b

    const/16 v0, 0xb

    if-ne p1, v0, :cond_8b

    .line 953
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 954
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v11

    .line 955
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 956
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 957
    aget-object v0, v2, v11

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 958
    .local v8, "columnIndex":I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 959
    .local v10, "filePath":Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 960
    invoke-static {v10}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 961
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_49

    .line 962
    sget v0, Lic/buzzebeeslib/R$string;->post_check_your_picture:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    .line 1051
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "columnIndex":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "filePath":Ljava/lang/String;
    :cond_48
    :goto_48
    return-void

    .line 965
    .restart local v2    # "filePathColumn":[Ljava/lang/String;
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "columnIndex":I
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "filePath":Ljava/lang/String;
    :cond_49
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_68

    .line 966
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_68

    .line 967
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 968
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 970
    :cond_64
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v3, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 974
    :cond_68
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v7, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 977
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    if-eqz v0, :cond_75

    .line 978
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 981
    :cond_75
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 982
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentMedia:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 984
    if-eqz v7, :cond_48

    .line 985
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 986
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_48

    .line 992
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "columnIndex":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "filePath":Ljava/lang/String;
    :cond_8b
    if-ne p2, v1, :cond_48

    const/16 v0, 0x15

    if-ne p1, v0, :cond_48

    .line 996
    const-string v0, "VAT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "gPostData.gPath="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v4, v4, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 998
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_ff

    .line 1002
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_d2

    .line 1003
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d2

    .line 1004
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1005
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1007
    :cond_ce
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v3, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 1011
    :cond_d2
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v6, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 1014
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    if-eqz v0, :cond_df

    .line 1015
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1017
    :cond_df
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1018
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1019
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentMedia:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1021
    if-eqz v6, :cond_fa

    .line 1022
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 1023
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1025
    :cond_f9
    const/4 v6, 0x0

    .line 1045
    :cond_fa
    :goto_fa
    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->doPost(Landroid/view/View;)V

    goto/16 :goto_48

    .line 1031
    :cond_ff
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_fa

    .line 1032
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_fa

    .line 1033
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 1034
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1036
    :cond_11a
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v3, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto :goto_fa
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 2687
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentSticker:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 2688
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentSticker:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2694
    :goto_f
    return-void

    .line 2689
    :cond_10
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentImage:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    .line 2690
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentImage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_f

    .line 2692
    :cond_1e
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_f
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    .line 781
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 782
    .local v4, "name":Ljava/lang/String;
    sget v5, Lic/buzzebeeslib/R$string;->menu_popup_delete:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 783
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    if-eqz v5, :cond_62

    .line 784
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 785
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v5, Lic/buzzebeeslib/R$string;->menu_popup_delete_confirm:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 786
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 787
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Yes"

    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewList2Activity$3;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$3;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 795
    const-string v6, "No"

    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewList2Activity$4;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$4;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 800
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 801
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 811
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "message":Ljava/lang/String;
    :cond_62
    :goto_62
    const/4 v5, 0x1

    return v5

    .line 803
    :cond_64
    sget v5, Lic/buzzebeeslib/R$string;->menu_popup_like:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 804
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    if-eqz v5, :cond_62

    .line 805
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 806
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "MarketReview"

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 807
    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_62
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 248
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 249
    if-eqz p1, :cond_d0

    .line 250
    const-string v7, "buzzebees.MarketReview"

    const-string v8, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_d
    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->requestWindowFeature(I)Z

    .line 255
    invoke-static {p0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 256
    sget v7, Lic/buzzebeeslib/R$layout;->bz_market_review_list_comment:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->setContentView(I)V

    .line 268
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;

    .line 270
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "fonts/DSNSKW_.TTF"

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gFontHeader:Landroid/graphics/Typeface;

    .line 271
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "fonts/kit55p.ttf"

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gFontDefault:Landroid/graphics/Typeface;

    .line 273
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 274
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 276
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "cache_review"

    invoke-direct {v0, v7, v8}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3e800000

    invoke-virtual {v0, v7, v8}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 278
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 279
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 280
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gScreenHeight:I

    .line 281
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gScreenWidth:I

    .line 283
    iget v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gScreenWidth:I

    .line 284
    .local v6, "width":I
    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gScreenHeight:I

    .line 286
    .local v2, "height":I
    if-le v2, v6, :cond_d9

    .end local v2    # "height":I
    :goto_79
    div-int/lit8 v4, v2, 0x2

    .line 287
    .local v4, "longest":I
    new-instance v7, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 288
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v8, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 289
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 290
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 299
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->initialParam()V

    .line 301
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->initialLayoutComment()V

    .line 303
    if-nez p1, :cond_e1

    .line 304
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v7, :cond_db

    .line 305
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->setLayoutByCatch()V

    .line 329
    :goto_ab
    sget v7, Lic/buzzebeeslib/R$id;->layoutBackButton:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 330
    .local v3, "layoutBackButton":Landroid/widget/RelativeLayout;
    new-instance v7, Lic/buzzebeeslib/activity/MarketReviewList2Activity$1;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    sget v7, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gTvPageHeader:Landroid/widget/TextView;

    .line 341
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gTvPageHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v7, v8, v9, v10}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 342
    return-void

    .line 252
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "layoutBackButton":Landroid/widget/RelativeLayout;
    .end local v4    # "longest":I
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "width":I
    :cond_d0
    const-string v7, "buzzebees.MarketReview"

    const-string v8, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "width":I
    :cond_d9
    move v2, v6

    .line 286
    goto :goto_79

    .line 307
    .end local v2    # "height":I
    .restart local v4    # "longest":I
    :cond_db
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaignID:Ljava/lang/String;

    invoke-direct {p0, v7}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getCampaign(Ljava/lang/String;)V

    goto :goto_ab

    .line 310
    :cond_e1
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_ab
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .param p1, "cm"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "cminf"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x1

    .line 763
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 764
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    if-eqz v1, :cond_54

    .line 765
    sget v1, Lic/buzzebeeslib/R$string;->menu_popup_header:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 766
    sget-object v1, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v2, "com.ptt.BlueCard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 767
    iget v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->MENU_SHOW_LIKE:I

    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->MENU_SHOW_LIKE:I

    sget v3, Lic/buzzebeeslib/R$string;->menu_popup_like:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 770
    :cond_28
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/LibUserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "UserId":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v1, v1, Lic/buzzebeeslib/bean/CampaignReview;->UserId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 772
    iget v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->MENU_REVIEW_DELETE:I

    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->MENU_REVIEW_DELETE:I

    sget v3, Lic/buzzebeeslib/R$string;->menu_popup_delete:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 775
    :cond_47
    iget v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->MENU_CANCEL:I

    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->MENU_CANCEL:I

    sget v3, Lic/buzzebeeslib/R$string;->menu_popup_cancel:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 777
    .end local v0    # "UserId":Ljava/lang/String;
    :cond_54
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 417
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 418
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 427
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 430
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 431
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 386
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 387
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 399
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 400
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->clearPostListener()V

    .line 401
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 411
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 412
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 522
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 523
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 352
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 353
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onResume() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0, v3}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 366
    new-instance v0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)V

    invoke-static {v0}, Lic/buzzebeeslib/util/async/PostEvents;->addPostListener(Lic/buzzebeeslib/util/async/PostEvents$PostListener;)V

    .line 373
    :try_start_19
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_24

    .line 374
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 375
    :cond_24
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mListPosition:I

    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mItemPosition:I

    invoke-virtual {v0, v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->setSelectionFromTop(II)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_3e

    .line 380
    :goto_2d
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v3}, Lic/buzzebeeslib/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 381
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "402705486466922"

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    return-void

    .line 376
    :catch_3e
    move-exception v0

    goto :goto_2d
.end method

.method protected onResumeFragments()V
    .registers 1

    .prologue
    .line 497
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 518
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 444
    const-string v2, "buzzebees.MarketReview"

    const-string v3, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    const-string v2, "paramCampaign"

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 479
    :try_start_18
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mListState:Landroid/os/Parcelable;

    .line 480
    const-string v2, "listState"

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 483
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mListPosition:I

    .line 484
    const-string v2, "listPosition"

    iget v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mListPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 488
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_49

    :goto_3f
    iput v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mItemPosition:I

    .line 489
    const-string v1, "itemPosition"

    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mItemPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    .end local v0    # "itemView":Landroid/view/View;
    :goto_48
    return-void

    .line 488
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_49
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4c} :catch_4e

    move-result v1

    goto :goto_3f

    .line 490
    .end local v0    # "itemView":Landroid/view/View;
    :catch_4e
    move-exception v1

    goto :goto_48
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 346
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 347
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 405
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 406
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method public openGallery(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0xc

    .line 2390
    new-instance v1, Lic/buzzebeeslib/util/async/PostData;

    invoke-direct {v1}, Lic/buzzebeeslib/util/async/PostData;-><init>()V

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    .line 2391
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput v3, v1, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 2392
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2393
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2394
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2395
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput v3, v1, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 2397
    return-void
.end method

.method public openImage(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2376
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2377
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->etTextMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2379
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;

    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewList2Activity$17;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$17;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    .line 2386
    const-wide/16 v4, 0x32

    .line 2379
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2387
    return-void
.end method

.method public openSticker(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2361
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2362
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->etTextMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2364
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;

    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewList2Activity$16;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$16;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V

    .line 2371
    const-wide/16 v4, 0x32

    .line 2364
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2373
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 550
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewList2Activity$2;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$2;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    return-void
.end method

.method public takePicture(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2400
    new-instance v1, Lic/buzzebeeslib/util/async/PostData;

    invoke-direct {v1}, Lic/buzzebeeslib/util/async/PostData;-><init>()V

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    .line 2401
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/16 v2, 0xc

    iput v2, v1, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 2402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2403
    .local v0, "i":Landroid/content/Intent;
    const/16 v1, 0x64

    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getOutputMediaFileUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gFileUri:Landroid/net/Uri;

    .line 2404
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gFileUri:Landroid/net/Uri;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gFileUri:Landroid/net/Uri;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 2405
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gFileUri:Landroid/net/Uri;

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 2406
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    sget-object v2, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mediaFile:Ljava/io/File;

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gMediaFile:Ljava/io/File;

    .line 2407
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    sget-object v2, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->path:Ljava/lang/String;

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    .line 2408
    const-string v1, "output"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2409
    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2410
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/16 v2, 0xb

    iput v2, v1, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 2415
    :goto_4e
    return-void

    .line 2412
    :cond_4f
    sget v1, Lic/buzzebeeslib/R$string;->post_check_your_memory_card:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_4e
.end method
