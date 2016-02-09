.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1$1;
.super Ljava/lang/Object;
.source "CampaignDetailAdBuzzActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1$1;->this$3:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 984
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 986
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1$1;->this$3:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 987
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1$1;->this$3:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1$1;->this$3:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->RC_UPDATE_PROFILE:I
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 988
    return-void
.end method
