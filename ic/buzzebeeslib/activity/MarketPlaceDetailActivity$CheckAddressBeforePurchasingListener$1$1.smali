.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;

    .line 4548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 4550
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4552
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4553
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener$1;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 4554
    return-void
.end method
