.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$2;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;)V
    .registers 2

    .prologue
    .line 953
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$2;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 956
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$2;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 957
    return-void
.end method
