.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$4;
.super Ljava/lang/Object;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->doWatchAdd(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$4;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 645
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 646
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$4;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 647
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$4;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 648
    return-void
.end method
