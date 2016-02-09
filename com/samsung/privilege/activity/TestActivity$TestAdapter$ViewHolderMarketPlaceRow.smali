.class Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;
.super Ljava/lang/Object;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/TestActivity$TestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderMarketPlaceRow"
.end annotation


# instance fields
.field public imgCampaign:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/samsung/privilege/activity/TestActivity$TestAdapter;

.field public tvAgencyName:Landroid/widget/TextView;

.field public tvCampaignName:Landroid/widget/TextView;

.field public tvRemaining:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/TestActivity$TestAdapter;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/privilege/activity/TestActivity$TestAdapter$ViewHolderMarketPlaceRow;->this$1:Lcom/samsung/privilege/activity/TestActivity$TestAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
