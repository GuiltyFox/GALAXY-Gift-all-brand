.class Lic/buzzebeeslib/activity/PurchasingListActivity$4$1;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$4;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity$4;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$4;

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$4;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$4;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$22(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 724
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$4;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$4;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$22(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 727
    :cond_19
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$4$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$4;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$4;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$4;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$4;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->setCampaignUI()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$44(Lic/buzzebeeslib/activity/PurchasingListActivity;)V

    .line 728
    return-void
.end method
