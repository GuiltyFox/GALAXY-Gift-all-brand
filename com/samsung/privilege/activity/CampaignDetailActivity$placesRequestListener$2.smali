.class Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$2;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;

    .line 3297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 3300
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvLoadingMap:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$18(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3301
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingMap:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$24(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3302
    return-void
.end method
