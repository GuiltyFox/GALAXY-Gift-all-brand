.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$5;
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$5;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 651
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 652
    return-void
.end method
