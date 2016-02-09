.class Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;
.super Ljava/lang/Object;
.source "RequestHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderRequestHelpRow"
.end annotation


# instance fields
.field public imgBarLike:Landroid/widget/ImageView;

.field public imgCreateTime:Landroid/widget/ImageView;

.field public imgCreateTimePhoto:Landroid/widget/ImageView;

.field public imgLike:Landroid/widget/ImageView;

.field public imgPhotoSmart:Landroid/widget/ImageView;

.field public imgProfile:Landroid/widget/ImageView;

.field public imgReviewIcon:Lcom/loopj/android/image/SmartImageView;

.field public layoutBackWhite:Landroid/widget/RelativeLayout;

.field public layoutBarPhoto:Landroid/widget/RelativeLayout;

.field public layoutCommentCount:Landroid/widget/RelativeLayout;

.field public layoutCreateTime:Landroid/widget/RelativeLayout;

.field public layoutLike:Landroid/widget/RelativeLayout;

.field public layoutPhoto:Landroid/widget/RelativeLayout;

.field public layoutSeeMore:Lcom/samsung/privilege/control/RelativeLayoutButton;

.field public layoutStatus:Landroid/widget/RelativeLayout;

.field public pbLoadingPhotoSmart:Landroid/widget/ProgressBar;

.field public progressBarLoadingIcon:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

.field public tvCommentCount:Landroid/widget/TextView;

.field public tvCreateTime:Landroid/widget/TextView;

.field public tvCreateTimePhoto:Landroid/widget/TextView;

.field public tvDisplayName:Landroid/widget/TextView;

.field public tvLike:Landroid/widget/TextView;

.field public tvLocationNamePhoto:Landroid/widget/TextView;

.field public tvSeeMore:Landroid/widget/TextView;

.field public tvStatus:Landroid/widget/TextView;

.field public tvTempForPhoto:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;)V
    .registers 2

    .prologue
    .line 852
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$ViewHolderRequestHelpRow;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
