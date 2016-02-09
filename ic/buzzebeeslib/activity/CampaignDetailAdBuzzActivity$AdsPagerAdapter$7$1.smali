.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7$1;
.super Ljava/lang/Object;
.source "CampaignDetailAdBuzzActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 909
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 910
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->incorrectTime:I
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$18(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 925
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$7;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->reset()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)V

    .line 929
    :cond_1d
    return-void
.end method
