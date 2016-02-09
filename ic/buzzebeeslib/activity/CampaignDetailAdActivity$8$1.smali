.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8$1;
.super Ljava/lang/Object;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 738
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 739
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 740
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 741
    return-void
.end method
