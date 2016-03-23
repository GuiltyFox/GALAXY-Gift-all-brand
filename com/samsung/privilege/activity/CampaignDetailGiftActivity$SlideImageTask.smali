.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;
.super Ljava/util/TimerTask;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlideImageTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1680
    return-void
.end method
