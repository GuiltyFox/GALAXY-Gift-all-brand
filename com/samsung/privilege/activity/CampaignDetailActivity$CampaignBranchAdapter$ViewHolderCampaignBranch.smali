.class Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderCampaignBranch"
.end annotation


# instance fields
.field imgIconMap:Landroid/widget/ImageView;

.field layoutMain:Landroid/widget/RelativeLayout;

.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

.field tvBranchName:Landroid/widget/TextView;

.field tvDistance:Landroid/widget/TextView;

.field tvPeopleCount:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;)V
    .registers 2

    .prologue
    .line 3420
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
