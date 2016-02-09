.class Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderMarketReviewRow"
.end annotation


# instance fields
.field public contentPhotoSmart:Landroid/widget/RelativeLayout;

.field public contentReview:Landroid/widget/LinearLayout;

.field public imgCommentIcon:Landroid/widget/ImageView;

.field public imgCreateTime:Landroid/widget/ImageView;

.field public imgPhotoSmart:Landroid/widget/ImageView;

.field public imgProfile:Landroid/widget/ImageView;

.field public layoutStatus:Landroid/widget/RelativeLayout;

.field public progressBarLoadingIcon:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

.field public tvComment:Landroid/widget/TextView;

.field public tvCreateTime:Landroid/widget/TextView;

.field public tvDisplayName:Landroid/widget/TextView;

.field public tvSeeMore:Landroid/widget/TextView;

.field public tvStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;)V
    .registers 2

    .prologue
    .line 1255
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter$ViewHolderMarketReviewRow;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
