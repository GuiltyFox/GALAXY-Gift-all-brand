.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;

    .line 4076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 4078
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4080
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4081
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener$1;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivity(Landroid/content/Intent;)V

    .line 4082
    return-void
.end method
