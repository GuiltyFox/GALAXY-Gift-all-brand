.class Lcom/samsung/privilege/activity/CampaignDetailActivity$24$4;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$24;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$24;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$4;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$24;

    .line 3229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3232
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$4;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$24;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$24;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3233
    return-void
.end method
