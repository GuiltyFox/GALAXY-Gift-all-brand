.class Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;

    .line 3142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3145
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvLoadingMap:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$18(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    const v3, 0x7f0a031a

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3146
    return-void
.end method
