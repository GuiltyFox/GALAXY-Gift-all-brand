.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$9;
.super Ljava/lang/Object;
.source "CampaignDetailAdBuzzActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$9;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    .line 2105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2107
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2108
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$9;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->finish()V

    .line 2109
    return-void
.end method
