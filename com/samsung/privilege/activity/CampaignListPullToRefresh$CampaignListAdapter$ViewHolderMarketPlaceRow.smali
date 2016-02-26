.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderMarketPlaceRow"
.end annotation


# instance fields
.field public imageNew:Landroid/widget/ImageView;

.field public imgCampaign:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;

.field public tvAgencyName:Landroid/widget/TextView;

.field public tvCampaignName:Landroid/widget/TextView;

.field public tvRemaining:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;)V
    .registers 2

    .prologue
    .line 848
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
