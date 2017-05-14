.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;
.super Ljava/util/TimerTask;
.source "CampaignDetailGiftActivity.java"


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1928
    return-void
.end method
