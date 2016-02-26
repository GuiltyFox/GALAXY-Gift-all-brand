.class public Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MarketReviewOfReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;,
        Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;,
        Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;,
        Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;,
        Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_review"

.field private static final ITEM_POSITION_KEY:Ljava/lang/String; = "itemPosition"

.field private static final LIST_POSITION_KEY:Ljava/lang/String; = "listPosition"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "listState"

.field private static final PERMISSIONS_PUBLISH_WALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERMISSIONS_READ_WALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REAUTH_ACTIVITY_CODE:I = 0x64


# instance fields
.field private MENU_CANCEL:I

.field private MENU_REVIEW_DELETE:I

.field private MENU_SHOW_LIKE:I

.field private TAG:Ljava/lang/String;

.field private callback:Lcom/facebook/Session$StatusCallback;

.field private cd:Lic/buzzebeeslib/util/ConnectionDetector;

.field private footerListView:Landroid/view/View;

.field private gAdapter:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

.field private gBtnPostComment:Landroid/widget/Button;

.field private gCurrentReview:Lcom/samsung/privilege/bean/MarketReview;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gENUM_PAGE_MODE_MARKETPLACE_REVIEW:I

.field private gFontDefault:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gIsChanged:Z

.field private gIsHaveMoreData:Z

.field private gIsLoadFromPost:Z

.field private gIvLoadingPrevious:Landroid/widget/ImageView;

.field private gLayoutRootPrevious:Landroid/widget/RelativeLayout;

.field private gListMarketReview:Landroid/widget/ListView;

.field private gLoading:Z

.field private gMarketReviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/MarketReview;",
            ">;"
        }
    .end annotation
.end field

.field private gPbLoadingPrevious:Landroid/widget/ProgressBar;

.field private gPbLoadingReview:Landroid/widget/ProgressBar;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gTvCommentCount:Landroid/widget/TextView;

.field private gTvPageHeader:Landroid/widget/TextView;

.field private gTvPreviousReview:Landroid/widget/TextView;

.field private gTxtPostComment:Landroid/widget/TextView;

.field private header_no_review_ListView:Landroid/view/View;

.field private isResumed:Z

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mItemPosition:I

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;

.field private paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/samsung/privilege/AppSetting;->Permissons_BzBs_Read_List:Ljava/util/List;

    sput-object v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->PERMISSIONS_READ_WALL:Ljava/util/List;

    .line 108
    sget-object v0, Lcom/samsung/privilege/AppSetting;->Permissons_BzBs_Read_List:Ljava/util/List;

    sput-object v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->PERMISSIONS_PUBLISH_WALL:Ljava/util/List;

    .line 304
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 66
    const-class v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    .line 102
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIsLoadFromPost:Z

    .line 103
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIsChanged:Z

    .line 110
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->isResumed:Z

    .line 115
    iput v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gENUM_PAGE_MODE_MARKETPLACE_REVIEW:I

    .line 116
    new-instance v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$1;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->callback:Lcom/facebook/Session$StatusCallback;

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    .line 307
    iput v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListPosition:I

    .line 308
    iput v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mItemPosition:I

    .line 1042
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->MENU_SHOW_LIKE:I

    .line 1043
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->MENU_REVIEW_DELETE:I

    .line 1044
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->MENU_CANCEL:I

    .line 1168
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gLoading:Z

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 1741
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Lcom/samsung/privilege/bean/MarketReview;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V
    .registers 1

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->initialLayout()V

    return-void
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Z)V
    .registers 2

    .prologue
    .line 1170
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->loadReviewOfReview(Z)V

    return-void
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Z)V
    .registers 2

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIsHaveMoreData:Z

    return-void
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)I
    .registers 2

    .prologue
    .line 307
    iget v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListPosition:I

    return v0
.end method

.method static synthetic access$17(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;I)V
    .registers 2

    .prologue
    .line 307
    iput p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListPosition:I

    return-void
.end method

.method static synthetic access$18(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Z)V
    .registers 2

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->setLayoutByReview(Z)V

    return-void
.end method

.method static synthetic access$19(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIvLoadingPrevious:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$20(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gPbLoadingReview:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$21(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gPbLoadingPrevious:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$22(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gLayoutRootPrevious:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$24(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIsHaveMoreData:Z

    return v0
.end method

.method static synthetic access$25(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$26(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$27(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)I
    .registers 2

    .prologue
    .line 308
    iget v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mItemPosition:I

    return v0
.end method

.method static synthetic access$28(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Z)V
    .registers 2

    .prologue
    .line 1168
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gLoading:Z

    return-void
.end method

.method static synthetic access$29(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    return-object v0
.end method

.method static synthetic access$30(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$31(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Lcom/samsung/privilege/bean/MarketReview;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gCurrentReview:Lcom/samsung/privilege/bean/MarketReview;

    return-void
.end method

.method static synthetic access$32(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 306
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    return-void
.end method

.method static synthetic access$33(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;I)V
    .registers 2

    .prologue
    .line 308
    iput p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mItemPosition:I

    return-void
.end method

.method static synthetic access$34(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 774
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->doViewPhotoSmart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Lcom/samsung/privilege/bean/MarketReview;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    return-object v0
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvCommentCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Z)V
    .registers 2

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIsChanged:Z

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTxtPostComment:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gBtnPostComment:Landroid/widget/Button;

    return-object v0
.end method

.method private addHeaderAndFooter()V
    .registers 38

    .prologue
    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f030102

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 452
    .local v12, "headerView":Landroid/view/View;
    const v2, 0x7f160022

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 454
    .local v36, "tvTempForPhoto":Landroid/widget/TextView;
    const/high16 v2, 0x7f160000

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 455
    .local v4, "imgProfile":Landroid/widget/ImageView;
    const v2, 0x7f160001

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 456
    .local v32, "tvDisplayName":Landroid/widget/TextView;
    const v2, 0x7f16000c

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 458
    .local v21, "layoutPhoto":Landroid/widget/RelativeLayout;
    const v2, 0x7f160007

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 459
    .local v16, "imgPhotoSmart":Landroid/widget/ImageView;
    const v2, 0x7f16000e

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RatingBar;

    .line 460
    .local v26, "ratingBarPhoto":Landroid/widget/RatingBar;
    const v2, 0x7f16000f

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 462
    .local v34, "tvLocationNamePhoto":Landroid/widget/TextView;
    const v2, 0x7f160011

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 463
    .local v31, "tvCreateTimePhoto":Landroid/widget/TextView;
    const v2, 0x7f16001e

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/RatingBar;

    .line 464
    .local v27, "ratingBarStatus":Landroid/widget/RatingBar;
    const v2, 0x7f16001f

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 466
    .local v19, "layoutCreateTime":Landroid/widget/RelativeLayout;
    const v2, 0x7f160008

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 468
    .local v30, "tvCreateTime":Landroid/widget/TextView;
    const v2, 0x7f160002

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 469
    .local v35, "tvStatus":Landroid/widget/TextView;
    const v2, 0x7f160013

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 472
    .local v23, "layoutSeeMore":Landroid/widget/RelativeLayout;
    const v2, 0x7f160017

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 473
    .local v20, "layoutLike":Landroid/widget/RelativeLayout;
    const v2, 0x7f160018

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ProgressBar;

    .line 474
    .local v24, "pbImgLike":Landroid/widget/ProgressBar;
    const v2, 0x7f160019

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 475
    .local v15, "imgLike":Landroid/widget/ImageView;
    const v2, 0x7f16001a

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 476
    .local v33, "tvLike":Landroid/widget/TextView;
    const v2, 0x7f160005

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ProgressBar;

    .line 477
    .local v25, "progressBarLoadingIcon":Landroid/widget/ProgressBar;
    const v2, 0x7f160006

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 479
    .local v14, "imgCommentIcon":Landroid/widget/ImageView;
    const v2, 0x7f16001d

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvCommentCount:Landroid/widget/TextView;

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvCommentCount:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvCommentCount:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 497
    const/16 v17, 0x0

    .line 498
    .local v17, "isPhotoLayout":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->ImageUrl:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_173

    .line 499
    const/16 v17, 0x1

    .line 502
    :cond_173
    if-eqz v17, :cond_454

    .line 503
    const/4 v2, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 505
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 506
    const/16 v2, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 507
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 516
    :goto_195
    const/16 v2, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 517
    const/16 v2, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_477

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "api/profile/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v5, v5, Lcom/samsung/privilege/bean/MarketReview;->UserId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/picture"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, "profile_src":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v5, 0x0

    const v6, 0x7f020317

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 530
    :goto_1de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->Name:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    if-eqz v17, :cond_4aa

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->PlaceName:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v6, v2, Lcom/samsung/privilege/bean/MarketReview;->ImageUrl:Ljava/lang/String;

    const/4 v8, 0x0

    const v9, 0x7f0203a7

    const/4 v10, 0x0

    move-object/from16 v7, v16

    invoke-virtual/range {v5 .. v10}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 537
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->Rating:Ljava/lang/String;

    if-eqz v2, :cond_242

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_242

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_242

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 544
    :cond_242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v0, v2, Lcom/samsung/privilege/bean/MarketReview;->ImageUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 545
    .local v28, "strImageUrl":Ljava/lang/String;
    new-instance v2, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$4;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    .end local v28    # "strImageUrl":Ljava/lang/String;
    :cond_258
    :goto_258
    if-eqz v17, :cond_4ea

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-wide v6, v2, Lcom/samsung/privilege/bean/MarketReview;->CreatedTime:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v6, v7, v2}, Lic/buzzebeeslib/util/BBUtil;->CDateToTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    :goto_26d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_527

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v5, v5, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x64

    if-le v2, v5, :cond_4ff

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v5, v5, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    .line 577
    :goto_2a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    if-eqz v2, :cond_514

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    const/4 v2, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 584
    :goto_2c1
    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    :goto_2c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvCommentCount:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget v5, v5, Lcom/samsung/privilege/bean/MarketReview;->CommentCount:I

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget v2, v2, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    if-nez v2, :cond_54d

    .line 601
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 603
    const v2, 0x7f0202e4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v15, v2, v5}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 610
    :goto_2ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->Sticker:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1, v14}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->setMessageIcon(Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)Z

    move-result v18

    .line 612
    .local v18, "isShowIcon":Z
    new-instance v29, Lcom/samsung/privilege/bean/TagLikeMarketReview;

    invoke-direct/range {v29 .. v29}, Lcom/samsung/privilege/bean/TagLikeMarketReview;-><init>()V

    .line 613
    .local v29, "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    move-object/from16 v0, v29

    iput-object v2, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    .line 614
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/samsung/privilege/bean/TagLikeMarketReview;->layoutLike:Landroid/widget/RelativeLayout;

    .line 615
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/samsung/privilege/bean/TagLikeMarketReview;->pbImgLike:Landroid/widget/ProgressBar;

    .line 616
    move-object/from16 v0, v29

    iput-object v15, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->imgLike:Landroid/widget/ImageView;

    .line 617
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/samsung/privilege/bean/TagLikeMarketReview;->tvLike:Landroid/widget/TextView;

    .line 618
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2, v12}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget v2, v2, Lcom/samsung/privilege/bean/MarketReview;->CommentCount:I

    const/4 v5, 0x2

    if-le v2, v5, :cond_3db

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f030101

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 624
    .local v13, "headerViewPrevious":Landroid/view/View;
    const v2, 0x7f0c01ff

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gLayoutRootPrevious:Landroid/widget/RelativeLayout;

    .line 625
    const v2, 0x7f0c0200

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIvLoadingPrevious:Landroid/widget/ImageView;

    .line 626
    const v2, 0x7f0c0201

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gPbLoadingPrevious:Landroid/widget/ProgressBar;

    .line 627
    const v2, 0x7f0c0202

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v6, 0x7f09010a

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gLayoutRootPrevious:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$5;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2, v13}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 647
    .end local v13    # "headerViewPrevious":Landroid/view/View;
    :cond_3db
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f030100

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 649
    .local v11, "footerViewReview":Landroid/view/View;
    const v2, 0x7f0c01fd

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTxtPostComment:Landroid/widget/TextView;

    .line 650
    const v2, 0x7f0c01fe

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gBtnPostComment:Landroid/widget/Button;

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTxtPostComment:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gBtnPostComment:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTxtPostComment:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gBtnPostComment:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gBtnPostComment:Landroid/widget/Button;

    new-instance v5, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$6;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    const v2, 0x7f0c01fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 680
    .local v22, "layoutReply":Landroid/widget/RelativeLayout;
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 681
    return-void

    .line 509
    .end local v3    # "profile_src":Ljava/lang/String;
    .end local v11    # "footerViewReview":Landroid/view/View;
    .end local v18    # "isShowIcon":Z
    .end local v22    # "layoutReply":Landroid/widget/RelativeLayout;
    .end local v29    # "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    :cond_454
    const/16 v2, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 511
    const/16 v2, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 512
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 513
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_195

    .line 523
    :cond_477
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "api/profile/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v5, v5, Lcom/samsung/privilege/bean/MarketReview;->UserId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/picture"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 524
    .restart local v3    # "profile_src":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v5, 0x0

    const v6, 0x7f020317

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    goto/16 :goto_1de

    .line 551
    :cond_4aa
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->Rating:Ljava/lang/String;

    if-eqz v2, :cond_258

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_258

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_258

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->Rating:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    goto/16 :goto_258

    .line 563
    :cond_4ea
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-wide v6, v2, Lcom/samsung/privilege/bean/MarketReview;->CreatedTime:J

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v6, v7, v2}, Lic/buzzebeeslib/util/BBUtil;->CDateToTime(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_26d

    .line 573
    :cond_4ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v5, v5, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    goto/16 :goto_2a8

    .line 581
    :cond_514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2c1

    .line 586
    :cond_527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    const-string v5, ""

    iput-object v5, v2, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    const-string v5, ""

    iput-object v5, v2, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    .line 589
    const-string v2, ""

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    const/16 v2, 0x8

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    const/4 v2, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2c7

    .line 605
    :cond_54d
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 607
    const v2, 0x7f0202e3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v15, v2, v5}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_2ff
.end method

.method private doViewPhotoSmart(Ljava/lang/String;)V
    .registers 7
    .param p1, "photo_src"    # Ljava/lang/String;

    .prologue
    .line 776
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/PhotoViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 777
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 782
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_13
    return-void

    .line 779
    :catch_14
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|doViewPhotoSmart):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private initialLayout()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 394
    const v3, 0x7f0c009b

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvPageHeader:Landroid/widget/TextView;

    .line 395
    const v3, 0x7f300003

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 397
    .local v2, "textView1":Landroid/widget/TextView;
    const/high16 v3, 0x7f300000

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gPbLoadingReview:Landroid/widget/ProgressBar;

    .line 398
    const v3, 0x7f300006

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    .line 400
    const v3, 0x7f0c0058

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$2;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$2;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    new-instance v4, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$3;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$3;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 431
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->addHeaderAndFooter()V

    .line 434
    :try_start_46
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_HEADER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 435
    .local v1, "font_header":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 436
    .local v0, "font":Landroid/graphics/Typeface;
    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvPageHeader:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 437
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 439
    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvPageHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 440
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_86} :catch_a1

    .line 445
    .end local v0    # "font":Landroid/graphics/Typeface;
    .end local v1    # "font_header":Landroid/graphics/Typeface;
    :goto_86
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300ef

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    .line 446
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030124

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->footerListView:Landroid/view/View;

    .line 447
    return-void

    .line 441
    :catch_a1
    move-exception v3

    goto :goto_86
.end method

.method private loadReviewByBuzzKey(Ljava/lang/String;)V
    .registers 7
    .param p1, "pBuzzKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadMarketReview --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;

    invoke-direct {v1, p0, v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;)V

    invoke-static {v0, v4, v1}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1134
    return-void
.end method

.method private loadReviewOfReview(Z)V
    .registers 6
    .param p1, "pLoadMore"    # Z

    .prologue
    .line 1171
    iget-boolean v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gLoading:Z

    if-eqz v1, :cond_c

    .line 1172
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v2, "loadMarketReview --> can not load, because the current loading is not finish..."

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :goto_b
    return-void

    .line 1174
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gLoading:Z

    .line 1176
    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$8;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/comments?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_97

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_97

    .line 1193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&lastRowKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/MarketReview;

    iget-object v1, v1, Lcom/samsung/privilege/bean/MarketReview;->RowKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    :goto_78
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadMarketReviewOfReview --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    invoke-direct {v2, p0, p1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Z)V

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_b

    .line 1195
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

.method private onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 8
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1742
    iget-boolean v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->isResumed:Z

    if-eqz v3, :cond_1a

    .line 1743
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 1744
    .local v2, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 1745
    .local v0, "backStackSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-lt v1, v0, :cond_1b

    .line 1750
    sget-object v3, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v3}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1752
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    .line 1758
    .end local v0    # "backStackSize":I
    .end local v1    # "i":I
    .end local v2    # "manager":Landroid/support/v4/app/FragmentManager;
    :cond_1a
    return-void

    .line 1746
    .restart local v0    # "backStackSize":I
    .restart local v1    # "i":I
    .restart local v2    # "manager":Landroid/support/v4/app/FragmentManager;
    :cond_1b
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 1745
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method private requestPublishPermissions(Lcom/facebook/Session;)V
    .registers 6
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 1720
    if-eqz p1, :cond_18

    .line 1721
    new-instance v2, Lcom/facebook/Session$NewPermissionsRequest;

    sget-object v3, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->PERMISSIONS_PUBLISH_WALL:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    sget-object v3, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;->setRequestCode(I)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v1

    .line 1723
    .local v1, "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    :try_start_15
    invoke-virtual {p1, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    .line 1728
    .end local v1    # "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    :cond_18
    :goto_18
    return-void

    .line 1724
    .restart local v1    # "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    :catch_19
    move-exception v0

    .line 1725
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method private requestReadPermissions(Lcom/facebook/Session;)V
    .registers 6
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 1731
    if-eqz p1, :cond_18

    .line 1732
    new-instance v2, Lcom/facebook/Session$NewPermissionsRequest;

    sget-object v3, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->PERMISSIONS_READ_WALL:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    sget-object v3, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;->setRequestCode(I)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v1

    .line 1734
    .local v1, "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    :try_start_15
    invoke-virtual {p1, v1}, Lcom/facebook/Session;->requestNewReadPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    .line 1739
    .end local v1    # "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    :cond_18
    :goto_18
    return-void

    .line 1735
    .restart local v1    # "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    :catch_19
    move-exception v0

    .line 1736
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 375
    const-string v0, "paramMarketReview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/MarketReview;

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    .line 376
    const-string v0, "gIsChanged"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIsChanged:Z

    .line 378
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->setLayoutByReview(Z)V

    .line 382
    :try_start_25
    const-string v0, "listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    .line 383
    const-string v0, "listPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListPosition:I

    .line 384
    const-string v0, "itemPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mItemPosition:I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3d} :catch_3e

    .line 391
    :cond_3d
    :goto_3d
    return-void

    .line 385
    :catch_3e
    move-exception v0

    goto :goto_3d
.end method

.method private setLayoutByCatch()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 918
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ReviewOfReview_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v7, v7, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "catch_MarketReview":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_79

    .line 921
    :try_start_24
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 922
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_5f

    move-result v6

    if-lt v3, v6, :cond_34

    .line 935
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_30
    invoke-direct {p0, v9}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->loadReviewOfReview(Z)V

    .line 939
    :goto_33
    return-void

    .line 924
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_34
    :try_start_34
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 926
    .local v5, "json_market_review":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/privilege/bean/MarketReview;

    invoke-direct {v7, v5}, Lcom/samsung/privilege/bean/MarketReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_42} :catch_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_42} :catch_5f

    .line 922
    .end local v5    # "json_market_review":Lorg/json/JSONObject;
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 927
    :catch_45
    move-exception v1

    .line 928
    .local v1, "e":Lorg/json/JSONException;
    :try_start_46
    iget-object v6, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(GetMarketReviewRequestListener|onComplete|for|JSONException):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5e} :catch_5f

    goto :goto_42

    .line 931
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_5f
    move-exception v2

    .line 932
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(initialLayoutByCatch|step1):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 937
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_79
    invoke-direct {p0, v9}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->loadReviewOfReview(Z)V

    goto :goto_33
.end method

.method private setLayoutByReview(Z)V
    .registers 7
    .param p1, "pLoadMore"    # Z

    .prologue
    .line 943
    if-eqz p1, :cond_f

    .line 944
    :try_start_2
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->notifyDataSetChanged()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_9b

    .line 1032
    :cond_7
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->footerListView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_17c

    .line 1040
    :goto_e
    return-void

    .line 946
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    if-eqz v2, :cond_26

    .line 948
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_9b

    move-result v2

    if-lez v2, :cond_cb

    .line 950
    :try_start_1b
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_26

    .line 951
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_b6

    .line 976
    :cond_26
    :goto_26
    :try_start_26
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 977
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    if-nez v2, :cond_11a

    .line 978
    new-instance v2, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    .line 979
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    if-eqz v2, :cond_104

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_104

    .line 980
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 981
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 982
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1002
    :cond_59
    :goto_59
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    if-eqz v2, :cond_7

    .line 1003
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_7

    .line 1004
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_15b

    .line 1005
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_77} :catch_9b

    move-result v2

    if-lez v2, :cond_7

    .line 1007
    :try_start_7a
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1008
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_85} :catch_86

    goto :goto_7

    .line 1010
    :catch_86
    move-exception v1

    .line 1011
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_87
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1012
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    const v3, 0x7f200001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_99} :catch_9b

    goto/16 :goto_7

    .line 1037
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_9b
    move-exception v1

    .line 1038
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

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 953
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_b6
    move-exception v1

    .line 954
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_b7
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_26

    .line 955
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    const v3, 0x7f200001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_26

    .line 959
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_cb
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e3

    .line 960
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    const v3, 0x7f200001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_e1} :catch_9b

    goto/16 :goto_26

    .line 963
    :cond_e3
    :try_start_e3
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_26

    .line 964
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_ee} :catch_f0

    goto/16 :goto_26

    .line 966
    :catch_f0
    move-exception v1

    .line 967
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_f1
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_26

    .line 968
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    const v3, 0x7f200001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_26

    .line 984
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_104
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 985
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 986
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_59

    .line 989
    :cond_11a
    new-instance v2, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    .line 990
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    if-eqz v2, :cond_145

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_145

    .line 991
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 992
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 993
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_59

    .line 995
    :cond_145
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 996
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 997
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_159} :catch_9b

    goto/16 :goto_59

    .line 1018
    :cond_15b
    :try_start_15b
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1019
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_166} :catch_168

    goto/16 :goto_7

    .line 1021
    :catch_168
    move-exception v1

    .line 1022
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_169
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1023
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;

    const v3, 0x7f200001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1033
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_17c
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->footerListView:Landroid/view/View;

    const/high16 v3, 0x7f240000

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_18a} :catch_9b

    goto/16 :goto_e
.end method


# virtual methods
.method public doLike(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 790
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .line 791
    .local v1, "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->doLike(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 795
    .end local v1    # "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    :goto_9
    return-void

    .line 792
    :catch_a
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|doLike):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public doLike(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 6
    .param p1, "tagLike"    # Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .prologue
    .line 798
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvPageHeader:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$7;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Lcom/samsung/privilege/bean/TagLikeMarketReview;)V

    .line 807
    const-wide/16 v2, 0x64

    .line 798
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 808
    return-void
.end method

.method public doRefresh(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 785
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->loadReviewOfReview(Z)V

    .line 786
    return-void
.end method

.method public doReviewOfReview(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1707
    return-void
.end method

.method public doSeeMore(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1625
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1626
    .local v1, "position":I
    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/bean/MarketReview;

    .line 1628
    .local v2, "review":Lcom/samsung/privilege/bean/MarketReview;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    .line 1629
    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->notifyDataSetChanged()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1633
    .end local v1    # "position":I
    .end local v2    # "review":Lcom/samsung/privilege/bean/MarketReview;
    :goto_1a
    return-void

    .line 1630
    :catch_1b
    move-exception v0

    .line 1631
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|doSeeMore):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1313
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1315
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 1334
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    if-eqz p1, :cond_ed

    .line 127
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v9, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_c
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->requestWindowFeature(I)Z

    .line 132
    const v8, 0x7f0300ff

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->setContentView(I)V

    .line 134
    new-instance v8, Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lic/buzzebeeslib/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    .line 139
    new-instance v8, Lcom/facebook/UiLifecycleHelper;

    iget-object v9, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v8, p0, v9}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 140
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v8, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 143
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gHandler:Landroid/os/Handler;

    .line 145
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gFontDefault:Landroid/graphics/Typeface;

    .line 147
    const v8, 0x7f0c0031

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 148
    .local v3, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "768830479847872"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f6

    .line 149
    const v8, 0x7f0202b8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    :goto_67
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 160
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 162
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "cache_review"

    invoke-direct {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3e800000

    invoke-virtual {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 164
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 165
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 166
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gScreenHeight:I

    .line 167
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gScreenWidth:I

    .line 169
    iget v7, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gScreenWidth:I

    .line 170
    .local v7, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gScreenHeight:I

    .line 172
    .local v2, "height":I
    if-le v2, v7, :cond_12e

    .end local v2    # "height":I
    :goto_a9
    div-int/lit8 v4, v2, 0x2

    .line 173
    .local v4, "longest":I
    new-instance v8, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 174
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v9, 0x7f0203a7

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 175
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 176
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "MarketReview"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lcom/samsung/privilege/bean/MarketReview;

    iput-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    .line 180
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    if-nez v8, :cond_131

    .line 181
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "BuzzKey"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, "paramBuzzKey":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->loadReviewByBuzzKey(Ljava/lang/String;)V

    .line 192
    .end local v6    # "paramBuzzKey":Ljava/lang/String;
    :goto_ec
    return-void

    .line 129
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "imgFlag":Landroid/widget/ImageView;
    .end local v4    # "longest":I
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "width":I
    :cond_ed
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v9, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 150
    .restart local v3    # "imgFlag":Landroid/widget/ImageView;
    :cond_f6
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1525635597652592"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10e

    .line 151
    const v8, 0x7f0202b7

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_67

    .line 152
    :cond_10e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "517155661760483"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_126

    .line 153
    const v8, 0x7f0202b9

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_67

    .line 155
    :cond_126
    const v8, 0x7f0202ba

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_67

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "width":I
    :cond_12e
    move v2, v7

    .line 172
    goto/16 :goto_a9

    .line 184
    .end local v2    # "height":I
    .restart local v4    # "longest":I
    :cond_131
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->initialLayout()V

    .line 186
    if-nez p1, :cond_13a

    .line 187
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->setLayoutByCatch()V

    goto :goto_ec

    .line 189
    :cond_13a
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_ec
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 283
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 284
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 293
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 296
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 299
    const v0, 0x7f0c007c

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 300
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 196
    const/4 v2, 0x4

    if-ne p1, v2, :cond_28

    .line 197
    iget-boolean v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIsChanged:Z

    if-eqz v2, :cond_23

    .line 198
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 199
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "review"

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 201
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->finish()V

    .line 204
    const/4 v2, 0x1

    .line 209
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_22
    return v2

    .line 206
    :cond_23
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_22

    .line 209
    :cond_28
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_22
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 252
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 253
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->isResumed:Z

    .line 264
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 265
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 266
    invoke-static {}, Lcom/facebook/android/PostEvents;->clearPostListener()V

    .line 267
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 277
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 278
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 365
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 366
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 221
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 222
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onResume() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->isResumed:Z

    .line 233
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 242
    :try_start_18
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_23

    .line 243
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 244
    :cond_23
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    iget v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListPosition:I

    iget v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mItemPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2c} :catch_2d

    .line 248
    :goto_2c
    return-void

    .line 245
    :catch_2d
    move-exception v0

    goto :goto_2c
.end method

.method protected onResumeFragments()V
    .registers 2

    .prologue
    .line 351
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 352
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 353
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    .line 361
    :cond_c
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 313
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v3, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v2, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 324
    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 327
    const-string v2, "paramMarketReview"

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 328
    const-string v2, "gIsChanged"

    iget-boolean v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIsChanged:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    :try_start_24
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    .line 334
    const-string v2, "listState"

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 337
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListPosition:I

    .line 338
    const-string v2, "listPosition"

    iget v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 342
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_55

    :goto_4b
    iput v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mItemPosition:I

    .line 343
    const-string v1, "itemPosition"

    iget v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mItemPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    .end local v0    # "itemView":Landroid/view/View;
    :goto_54
    return-void

    .line 342
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_55
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_58} :catch_5a

    move-result v1

    goto :goto_4b

    .line 344
    .end local v0    # "itemView":Landroid/view/View;
    :catch_5a
    move-exception v1

    goto :goto_54
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 215
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 216
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 271
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 272
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
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

    .line 755
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/StickerUtil;->STICKERS_MAPPING(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/Sticker;

    .line 756
    .local v6, "sticker":Lic/buzzebeeslib/bean/Sticker;
    if-eqz v6, :cond_34

    .line 757
    iget-object v0, v6, Lic/buzzebeeslib/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 758
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v1, v6, Lic/buzzebeeslib/bean/Sticker;->PictureUrl:Ljava/lang/String;

    const v4, 0x7f0203a7

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 760
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 770
    :goto_2b
    return v5

    .line 763
    :cond_2c
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 764
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 765
    goto :goto_2b

    .line 768
    :cond_34
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 769
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v5, v7

    .line 770
    goto :goto_2b
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$9;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1717
    return-void
.end method
