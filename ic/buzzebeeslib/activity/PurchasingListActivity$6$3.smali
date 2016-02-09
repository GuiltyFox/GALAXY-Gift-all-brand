.class Lic/buzzebeeslib/activity/PurchasingListActivity$6$3;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6$3;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$6;

    .line 1276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1279
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1280
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6$3;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$6;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$6;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->finish()V

    .line 1281
    return-void
.end method
