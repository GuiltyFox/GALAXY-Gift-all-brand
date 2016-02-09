.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$6;
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

.field private final synthetic val$v:Landroid/view/View;

.field private final synthetic val$wManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/net/wifi/WifiManager;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$6;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$6;->val$wManager:Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$6;->val$v:Landroid/view/View;

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 679
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 680
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$6;->val$wManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 681
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$6;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$6;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->startDownload(Landroid/view/View;)V

    .line 682
    return-void
.end method
