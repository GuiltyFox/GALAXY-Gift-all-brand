.class Lic/buzzebeeslib/activity/PurchasingListActivity$6$1;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$6;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity$6;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$6;

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1250
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$6;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$6;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    const-string v1, "No location fetched."

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$3(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V

    .line 1251
    return-void
.end method
