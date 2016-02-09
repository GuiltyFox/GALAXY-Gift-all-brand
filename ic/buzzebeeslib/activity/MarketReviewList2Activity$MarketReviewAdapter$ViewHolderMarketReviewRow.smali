.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderMarketReviewRow"
.end annotation


# instance fields
.field public imgCommentIcon:Landroid/widget/ImageView;

.field public imgCreateTime:Landroid/widget/ImageView;

.field public imgCreateTimePhoto:Landroid/widget/ImageView;

.field public imgLike:Landroid/widget/ImageView;

.field public imgPhotoSmart:Landroid/widget/ImageView;

.field public imgProfile:Landroid/widget/ImageView;

.field public layoutBackWhite:Landroid/widget/RelativeLayout;

.field public layoutBarPhoto:Landroid/widget/RelativeLayout;

.field public layoutCommentCount:Landroid/widget/RelativeLayout;

.field public layoutCreateTime:Landroid/widget/RelativeLayout;

.field public layoutLike:Landroid/widget/RelativeLayout;

.field public layoutPhoto:Landroid/widget/RelativeLayout;

.field public layoutSeeMore:Lic/buzzebeeslib/control/RelativeLayoutButton;

.field public layoutStatus:Landroid/widget/RelativeLayout;

.field public pbImgLike:Landroid/widget/ProgressBar;

.field public pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

.field public progressBarLoadingIcon:Landroid/widget/ProgressBar;

.field public ratingBarPhoto:Landroid/widget/RatingBar;

.field public ratingBarStatus:Landroid/widget/RatingBar;

.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

.field public tvCommentCount:Landroid/widget/TextView;

.field public tvCreateTime:Landroid/widget/TextView;

.field public tvCreateTimePhoto:Landroid/widget/TextView;

.field public tvDisplayName:Landroid/widget/TextView;

.field public tvLike:Landroid/widget/TextView;

.field public tvLocationNamePhoto:Landroid/widget/TextView;

.field public tvSeeMore:Landroid/widget/TextView;

.field public tvStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;)V
    .registers 2

    .prologue
    .line 1229
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$ViewHolderMarketReviewRow;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
