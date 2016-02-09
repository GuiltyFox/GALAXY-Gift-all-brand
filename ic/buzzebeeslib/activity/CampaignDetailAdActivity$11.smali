.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$11;
.super Ljava/lang/Object;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$11;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 987
    const-string v0, "campaign.ad"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$11;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->cancelLoad()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$24(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    .line 989
    return-void
.end method
